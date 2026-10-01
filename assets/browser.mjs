import FontFaceObserver from "fontfaceobserver-es";
import { Texture } from "pixi.js";
import bricksUrl from "./bricks.jpeg?url";

let image;

export function initializeImageInput(visible) {
  image = new Image();
  document.querySelector("input")?.remove();
  const input = document.createElement("input");
  input.type = "file";
  if (visible) input.className = "visible";
  input.addEventListener("change", () => {
    const file = input.files[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = () => { image.src = reader.result; };
    reader.onerror = (event) => console.error("Failed to load image", event);
    reader.readAsDataURL(file);
  });
  document.body.appendChild(input);
}

export function imageTexture() {
  return Texture.from(image.src || bricksUrl);
}

export function whenFontsReady(callback) {
  new FontFaceObserver("Josefin Sans").load().then(callback);
}
