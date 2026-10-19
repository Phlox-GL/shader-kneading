import FontFaceObserver from "fontfaceobserver-es";
import { Texture } from "pixi.js";
import bricksUrl from "./bricks.jpeg?url";

let texture;
const initialTexture = Texture.fromURL(bricksUrl).then((loaded) => { texture = loaded; });

export function initializeImageInput(visible, onTextureReady) {
  document.querySelector("input")?.remove();
  const input = document.createElement("input");
  input.type = "file";
  if (visible) input.className = "visible";
  input.addEventListener("change", () => {
    const file = input.files[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = async () => {
      try {
        texture = await Texture.fromURL(reader.result);
        onTextureReady();
      } catch (error) {
        console.error("Failed to load texture", error);
      }
    };
    reader.onerror = (event) => console.error("Failed to load image", event);
    reader.readAsDataURL(file);
  });
  document.body.appendChild(input);
}

export function imageTexture() {
  return texture;
}

export function whenFontsReady(callback) {
  Promise.all([new FontFaceObserver("Josefin Sans").load(), initialTexture]).then(() => callback());
}
