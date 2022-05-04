
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.4.10)
    :modules $ [] |memof/ |lilac/ |respo.calcit/ |respo-ui.calcit/ |phlox/ |touch-control/
  :entries $ {}
  :files $ {}
    |app.comp.container $ {}
      :defs $ {}
        |comp-container $ quote
          defn comp-container (store)
            ; println "\"Store" store $ :tab store
            let
                cursor $ []
                states $ :states store
              container ({})
                ; comp-moon-demo $ >> states :moon
                comp-fake-3d $ >> states :fake-3d
      :ns $ quote
        ns app.comp.container $ :require
          phlox.core :refer $ g hslx rect circle text container graphics create-list >>
          phlox.comp.button :refer $ comp-button
          phlox.comp.drag-point :refer $ comp-drag-point
          respo-ui.core :as ui
          memof.alias :refer $ memof-call
          app.comp.moon-demo :refer $ comp-moon-demo
          app.comp.fake-3d :refer $ comp-fake-3d
    |app.comp.fake-3d $ {}
      :defs $ {}
        |comp-fake-3d $ quote
          defn comp-fake-3d (states)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :n 1
              container ({})
                mesh $ {}
                  :position $ [] 100 100
                  :geometry $ {}
                    :attributes $ []
                      {} (:id |aVertexPosition) (:size 3)
                        :buffer $ concat &
                          w-log $ ->
                            [] ([] -40 -40 0) ([] 40 -40 0) ([] 40 40 0) ([] -40 40 0) ([] -40 -40 -40) ([] 40 -40 -40) ([] 40 40 -40) ([] -40 40 -40)
                            map move-x
                            map transform-3d
                    :index $ concat &
                      [] ([] 0 1) ([] 1 2) ([] 2 3) ([] 0 3) ([] 0 4) ([] 4 5) ([] 5 6) ([] 6 7) ([] 4 7) ([] 1 5) ([] 2 6) ([] 3 7)
                  :draw-mode :line-strip
                  :shader $ {}
                    :vertex-source $ inline-shader |fake-3d.vert
                    :fragment-source $ inline-shader |fake-3d.frag
                  :uniforms $ js-object
                    :n $ :n state
        |move-x $ quote
          defn move-x (point)
            -> point
              update 0 $ fn (x) (- x 20)
              update 2 $ fn (z) (- z 100)
        |screen-vec $ quote
          def screen-vec $ [] 0 0 -500
        |transform-3d $ quote
          defn transform-3d (point)
            let
                x $ nth point 0
                z $ negate (nth point 2)
                a $ nth screen-vec 0
                b $ negate (nth screen-vec 2)
                sq-sum $ + (* a a) (* b b)
                r $ /
                  + (* a x) (* b z)
                  , sq-sum
                y' $ / (nth point 1) r
                z' $ negate r
                x' $ /
                  - (* x b) (* a z)
                  , r (sqrt sq-sum)
              map ([] x' y' z')
                fn (p) p
      :ns $ quote
        ns app.comp.fake-3d $ :require
          phlox.core :refer $ g hslx rect circle text container graphics create-list >> mesh
          phlox.comp.button :refer $ comp-button
          phlox.comp.drag-point :refer $ comp-drag-point
          respo-ui.core :as ui
          memof.alias :refer $ memof-call
          app.config :refer $ inline-shader
    |app.comp.moon-demo $ {}
      :defs $ {}
        |comp-circle-demo $ quote
          defn comp-circle-demo $
        |comp-moon-demo $ quote
          defn comp-moon-demo (states)
            let
                cursor $ :cursor states
                state $ or (:data states)
                  {} $ :n 1
              container ({})
                mesh $ {}
                  :position $ [] 100 100
                  :geometry $ {}
                    :attributes $ []
                      {} (:id |aVertexPosition) (:size 2)
                        :buffer $ [] -400 -400 400 -400 400 400 -400 400
                      {} (:id |aUvs) (:size 2)
                        :buffer $ [] -1 -1 1 -1 1 1 -1 1
                    :index $ [] 0 1 2 0 3 2
                  :shader $ {}
                    :vertex-source $ inline-shader |moon.vert
                    :fragment-source $ inline-shader |moon.frag
                  :uniforms $ js-object
                    :n $ :n state
      :ns $ quote
        ns app.comp.moon-demo $ :require
          phlox.core :refer $ g hslx rect circle text container graphics create-list >> mesh
          phlox.comp.button :refer $ comp-button
          phlox.comp.drag-point :refer $ comp-drag-point
          respo-ui.core :as ui
          memof.alias :refer $ memof-call
          app.config :refer $ inline-shader
    |app.config $ {}
      :defs $ {}
        |inline-shader $ quote
          defmacro inline-shader (name)
            read-file $ str "\"shaders/" name
        |site $ quote
          def site $ {} (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/phlox/") (:title "\"Phlox") (:icon "\"http://cdn.tiye.me/logo/quamolit.png") (:storage-key "\"phlox")
      :ns $ quote
        ns app.config $ :require ("\"mobile-detect" :default mobile-detect)
    |app.main $ {}
      :defs $ {}
        |*store $ quote (defatom *store schema/store)
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and dev? $ not= op :states
              println "\"dispatch!" op op-data
            let
                op-id $ nanoid
                op-time $ js/Date.now
              reset! *store $ updater @*store op op-data op-id op-time
        |main! $ quote
          defn main! () (; js/console.log PIXI)
            if dev? $ load-console-formatter!
            -> (new FontFaceObserver "\"Josefin Sans") (.!load)
              .!then $ fn (event) (render-app!)
            add-watch *store :change $ fn (store prev) (render-app!)
            render-control!
            start-control-loop! 8 on-control-event
            println "\"App Started"
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (clear-phlox-caches!) (remove-watch *store :change)
              add-watch *store :change $ fn (store prev) (render-app!)
              render-app!
              replace-control-loop! 8 on-control-event
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! (? arg)
            render! (comp-container @*store) dispatch! $ or arg ({})
      :ns $ quote
        ns app.main $ :require ("\"pixi.js" :as PIXI)
          phlox.core :refer $ render! clear-phlox-caches! update-viewer! on-control-event
          app.comp.container :refer $ comp-container
          app.schema :as schema
          phlox.config :refer $ dev? mobile?
          "\"nanoid" :refer $ nanoid
          app.updater :refer $ updater
          "\"fontfaceobserver-es" :default FontFaceObserver
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
          touch-control.core :refer $ render-control! start-control-loop! replace-control-loop!
    |app.schema $ {}
      :defs $ {}
        |store $ quote
          def store $ {} (:tab :drafts) (:x 0) (:keyboard-on? false) (:counted 0)
            :states $ {}
            :cursor $ []
      :ns $ quote (ns app.schema)
    |app.updater $ {}
      :defs $ {}
        |updater $ quote
          defn updater (store op op-data op-id op-time)
            case-default op
              do (println "\"unknown op" op op-data) store
              :add-x $ update store :x
                fn (x)
                  if (> x 10) 0 $ + x 1
              :tab $ assoc store :tab op-data
              :toggle-keyboard $ update store :keyboard-on? not
              :counted $ update store :counted inc
              :states $ update-states store op-data
              :hydrate-storage op-data
      :ns $ quote
        ns app.updater $ :require
          [] phlox.cursor :refer $ [] update-states
