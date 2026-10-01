
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |phlox/ |touch-control/
      :type-slots $ {}
  :files $ {}
    'app.comp.bending $ %{} 'FileEntry
      :defs $ {} $ 'comp-bending
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-bending (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ schema/normalize-NState $ .unwrap-or (get states :data) (schema/NState :n 1)
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
                  :vertex-source $ inline-shader |bending.vert
                  :fragment-source $ inline-shader |bending.frag
                :draw-mode :triangles
                :uniforms $ js-object $ :n (:n state)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'phlox.schema/PhloxElement)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.bending
          :require
            [] phlox.core :refer $ [] mesh
            [] app.config :refer $ [] inline-shader
            [] app.schema :as schema
    'app.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-container (store)
            ; println |Store store $ :tab store
            let
                cursor $ []
                states $ decode-map-as
                  .unwrap $ get store :states
                  :: 'Map 'Tag 'Dynamic
                tab $ decode-map-as
                  either
                    .unwrap-or (get store :tab) nil
                    , :kaleidoscope
                  , 'Tag
              container ({})
                case-default tab
                  text $ {}
                    :text $ str "|Unknown tab " tab
                    :position $ [] 1 1
                    :style $ {} (:font-size 32) (:font-family "|Josefin Sans")
                      :fill $ hslx 10 100 70
                  :moon $ comp-moon-demo $ >> states :moon
                  :fake-3d $ comp-fake-3d $ >> states :fake-3d
                  :isohypse $ comp-isohypse $ >> states :isohypse
                  :star-trail $ comp-star-trail $ >> states :star-trail
                  :star-link $ comp-star-link
                  :wind-ring $ comp-wind-ring $ >> states :wind-ring
                  :bending $ comp-bending $ >> states :bending
                  :kaleidoscope $ comp-kaleidoscope $ >> states :kaleidoscope
                  :hyper-grid $ comp-hyper-grid $ >> states :hyper-grid
                comp-tabs
                  [] ([] :moon |Moon) ([] :fake-3d "|Fake 3d") ([] :isohypse |Isohypse) ([] :star-link "|Star Link") ([] :star-trail "|Star Trail") ([] :wind-ring "|Wind Ring") ([] :bending |Bending) ([] :kaleidoscope |Kaleidoscope) ([] :hyper-grid "|Hyper Lens")
                  , tab
                    {} $ :position $ [] -448 -300
                    fn (t d!)
                      d! $ :: :tab t
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'phlox.schema/PhloxElement)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            [] phlox.core :refer $ [] container >> text hslx
            [] phlox.comp.tabs :refer $ [] comp-tabs
            [] app.comp.moon-demo :refer $ [] comp-moon-demo
            [] app.comp.fake-3d :refer $ [] comp-fake-3d
            [] app.comp.isohypse :refer $ [] comp-isohypse comp-wind-ring
            [] app.comp.star-trail :refer $ [] comp-star-trail comp-star-link
            [] app.comp.bending :refer $ [] comp-bending
            [] app.comp.kaleidoscope :refer $ [] comp-kaleidoscope
            [] app.comp.hyper-grid :refer $ [] comp-hyper-grid
    'app.comp.fake-3d $ %{} 'FileEntry
      :defs $ {}
        'comp-fake-3d $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-fake-3d (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ schema/normalize-NState $ .unwrap-or (get states :data) (schema/NState :n 1)
              mesh $ {}
                :position $ [] 0 0
                :geometry $ {}
                  :attributes $ [] $ {} (:id |aVertexPosition) (:size 3)
                    :buffer $ concat & $ ->
                      [] ([] -40 -40 0) ([] 40 -40 0) ([] 40 40 0) ([] -40 40 0) ([] -40 -40 -80) ([] 40 -40 -80) ([] 40 40 -80) ([] -40 40 -80)
                      map move-x
                      wo-log
                      map transform-3d
                      wo-log
                  :index $ concat & $ [] ([] 0 1) ([] 1 2) ([] 2 3) ([] 0 3) ([] 0 4) ([] 4 5) ([] 5 6) ([] 6 7) ([] 4 7) ([] 1 5) ([] 2 6) ([] 3 7)
                :draw-mode :line-strip
                :shader $ {}
                  :vertex-source $ inline-shader |fake-3d.vert
                  :fragment-source $ inline-shader |fake-3d.frag
                :uniforms $ js-object $ :n (:n state)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'phlox.schema/PhloxElement)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'move-x $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn move-x (point)
            -> point
              map $ fn (p) (* p 2)
              update 0 $ fn (x) (+ x 0)
              update 1 $ fn (y) (+ y 0)
              update 2 $ fn (z) (- z 1200)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'Number
            :return $ :: 'List 'Number
        'screen-vec $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def screen-vec ([] 120 50 -600)
          :examples $ []
          :schema $ :: 'List 'Number
        'square $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn square (x) (&* x x)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'Number
        'sum-squares $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sum-squares (a b)
            &+ (&* a a) (&* b b)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ [] 'Number 'Number
        'transform-3d $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn transform-3d (point)
            let
                ; look-distance $ wo-log $ new-lookat-point
                ; look-distance screen-vec
                s $ noted "|back size of light cone?" 2
                x $ .unwrap $ nth point 0
                y $ .unwrap $ nth point 1
                z $ .unwrap $ nth point 2
                a $ .unwrap $ nth screen-vec 0
                b $ .unwrap $ nth screen-vec 1
                c $ .unwrap $ nth screen-vec 2
                r $ /
                  + (* a x) (* b y) (* c z)
                  + (square a) (square b) (square c)
                q $ / (+ s 1) (+ r s)
                L1 $ sqrt $ + (* a a b b)
                  square $ sum-squares a c
                  * b b c c
                y' $ *
                  /
                    + (* q y) (* b q s) (* -1 b s) (* -1 b)
                    sum-squares a c
                  , L1
                x' $ *
                  /
                    -
                      + (* q x) (* a q s) (* -1 s a) (* -1 a)
                      * y' $ / (* -1 a b) L1
                    , c -1
                  sqrt $ sum-squares a c
                z' $ negate r
              ; println $ [] x' y' z'
              -> ([] x' y' z')
                ; update 1 $ fn (v)
                  -> v (/ js/window.innerHeight) (* js/window.innerWidth)
                map $ fn (p) p
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'Number
            :return $ :: 'List 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.fake-3d
          :require
            [] phlox.core :refer $ [] mesh
            [] app.config :refer $ [] inline-shader
            [] app.schema :as schema
    'app.comp.hyper-grid $ %{} 'FileEntry
      :defs $ {} $ 'comp-hyper-grid
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-hyper-grid (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ schema/normalize-HyperState $ .unwrap-or (get states :data)
                  schema/HyperState :scale 1 :shift $ [] 100 0
                shift $ :shift state
              group ({})
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
                    :vertex-source $ inline-shader |hyper-grid.vert
                    :fragment-source $ inline-shader |hyper-grid.frag
                  :draw-mode :triangles
                  :uniforms $ js-object
                    :scale $ :scale state
                    :shift $ js-array & shift
                comp-drag-point (>> states :shift)
                  {} (:position shift) (:unit 0.01) (:radius 6)
                    :fill $ hslx 200 100 60
                    ; :color $ hslx 0 90 100
                    :alpha 1
                    :hide-text? true
                    :on-change $ fn (position d!)
                      d! $ :: :states cursor $ assoc state :shift position
                comp-slider (>> states :scale)
                  {} (:title |scale) (:unit 0.01) (:min 0.5) (:max 4)
                    :position $ [] 160 -360
                    :fill $ hslx 50 90 70
                    :color $ hslx 200 90 30
                    :value $ :scale state
                    :on-change $ fn (value d!)
                      d! $ :: :states cursor $ assoc state :scale value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'phlox.schema/PhloxElement)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.hyper-grid
          :require
            [] phlox.core :refer $ [] mesh group >> hslx
            [] app.config :refer $ [] inline-shader
            [] app.schema :as schema
            [] phlox.comp.drag-point :refer $ [] comp-drag-point
            [] phlox.comp.slider :refer $ [] comp-slider
    'app.comp.isohypse $ %{} 'FileEntry
      :defs $ {}
        'comp-isohypse $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-isohypse (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ schema/normalize-NState $ .unwrap-or (get states :data) (schema/NState :n 1)
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
                  :vertex-source $ inline-shader |isohypse.vert
                  :fragment-source $ inline-shader |isohypse.frag
                :draw-mode :triangles
                :uniforms $ js-object $ :n (:n state)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'phlox.schema/PhloxElement)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
        'comp-wind-ring $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-wind-ring (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ schema/normalize-WindState $ .unwrap-or (get states :data) (schema/WindState :n 1 :t 0)
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
                  :vertex-source $ inline-shader |wind-ring.vert
                  :fragment-source $ inline-shader |wind-ring.frag
                :draw-mode :triangles
                :uniforms $ js-object $ :uTime
                  wo-log $ /
                    decode-map-as (js/performance.now) 'Number
                    , 1000
                :on $ {} $ :pointermove
                  fn (e d!)
                    d! $ :: :states cursor $ assoc state :t
                      inc $ :t state
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'phlox.schema/PhloxElement)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.isohypse
          :require
            [] phlox.core :refer $ [] mesh
            [] app.config :refer $ [] inline-shader
            [] app.schema :as schema
    'app.comp.kaleidoscope $ %{} 'FileEntry
      :defs $ {} $ 'comp-kaleidoscope
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-kaleidoscope (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ schema/normalize-KaleidoState $ .unwrap-or (get states :data)
                  schema/KaleidoState :n 1 :shift ([] 0 0) :scale 1 :parts 1.99 :radius 0.8
                shift $ :shift state
              group ({})
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
                    :vertex-source $ inline-shader |kaleidoscope.vert
                    :fragment-source $ inline-shader |kaleidoscope.frag
                  :draw-mode :triangles
                  :uniforms $ js-object
                    :n $ :n state
                    :shift $ js-array
                      * 0.01 $ .unwrap $ nth shift 0
                      * 0.01 $ .unwrap $ nth shift 1
                    :colorTexture $ imageTexture
                    ; :color2Texture $ imageTexture
                    :scale $ :scale state
                    :parts $ :parts state
                    :radius $ :radius state
                comp-drag-point (>> states :p3)
                  {} (:position shift) (:unit 1.0) (:radius 6)
                    :fill $ hslx 0 90 100
                    ; :color $ hslx 0 90 100
                    :alpha 1
                    :hide-text? true
                    :on-change $ fn (position d!)
                      d! $ :: :states cursor $ assoc state :shift position
                comp-slider (>> states :scale)
                  {} (:title |scale) (:unit 0.01) (:min 0.001) (:max 2.0)
                    :position $ [] 20 -360
                    :fill $ hslx 50 90 70
                    :color $ hslx 200 90 30
                    :value $ :scale state
                    :on-change $ fn (value d!)
                      d! $ :: :states cursor $ assoc state :scale value
                comp-slider (>> states :parts)
                  {} (:title |parts) (:unit 0.01) (:min 1.99) (:max 12)
                    :position $ [] 160 -360
                    :fill $ hslx 50 90 70
                    :color $ hslx 200 90 30
                    :value $ :parts state
                    :on-change $ fn (value d!)
                      d! $ :: :states cursor $ assoc state :parts value
                comp-slider (>> states :radius)
                  {} (:title |radius) (:unit 0.01) (:min 0.1) (:max 0.9)
                    :position $ [] 300 -360
                    :fill $ hslx 50 90 70
                    :color $ hslx 200 90 30
                    :value $ :radius state
                    :on-change $ fn (value d!)
                      d! $ :: :states cursor $ assoc state :radius value
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'phlox.schema/PhloxElement)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.kaleidoscope
          :require
            [] phlox.core :refer $ [] mesh group >> hslx
            [] app.config :refer $ [] inline-shader
            [] app.schema :as schema
            [] phlox.comp.drag-point :refer $ [] comp-drag-point
            [] phlox.comp.slider :refer $ [] comp-slider
            [] |../assets/browser.mjs :refer $ [] imageTexture
    'app.comp.moon-demo $ %{} 'FileEntry
      :defs $ {} $ 'comp-moon-demo
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-moon-demo (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ schema/normalize-NState $ .unwrap-or (get states :data) (schema/NState :n 1)
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
                :draw-mode :triangles
                :uniforms $ js-object $ :n (:n state)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'phlox.schema/PhloxElement)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.moon-demo
          :require
            [] phlox.core :refer $ [] mesh
            [] app.config :refer $ [] inline-shader
            [] app.schema :as schema
    'app.comp.star-trail $ %{} 'FileEntry
      :defs $ {}
        'comp-star-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-star-link () (; "|stars however in 2D space")
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
                :vertex-source $ inline-shader |star-link.vert
                :fragment-source $ inline-shader |star-link.frag
              :draw-mode :triangles
              :uniforms $ js-object
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'phlox.schema/PhloxElement)
            :args $ []
            :features $ #{} :js-ffi
        'comp-star-trail $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-star-trail (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  :: 'List 'Dynamic
                state $ schema/normalize-TimeState $ .unwrap-or (get states :data) (schema/TimeState :t 0)
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
                  :vertex-source $ inline-shader |star-trail.vert
                  :fragment-source $ inline-shader |star-trail.frag
                :draw-mode :triangles
                :uniforms $ js-object $ :uTime
                  wo-log $ /
                    decode-map-as (js/performance.now) 'Number
                    , 1000
                :on $ {} $ :pointermove
                  fn (e d!)
                    d! $ :: :states cursor $ assoc state :t
                      inc $ :t state
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'phlox.schema/PhloxElement)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.star-trail
          :require
            [] phlox.core :refer $ [] mesh
            [] app.config :refer $ [] inline-shader
            [] app.schema :as schema
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'inline-shader $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro inline-shader (name)
            read-file $ str |shaders/ name
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'String
            :required $ [] $ :: 'Expr 'String
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css)
              :cdn-url |https://cos-sh.tiye.me/Phlox-GL/shader-kneading/
              :title |Phlox
              :icon |http://cdn.tiye.me/logo/quamolit.png
              :storage-key |phlox
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store schema/store
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (raw-op)
            let
                op $ schema/normalize-op raw-op
              when dev? $ match op
                (:states cursor state) nil
                _ $ println |dispatch! op
              reset! *store $ updater @*store op
                decode-map-as (nanoid) 'String
                decode-map-as (js/Date.now) 'Number
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (; js/console.log PIXI)
            if dev? $ load-console-formatter!
            initializeImageInput $ = |input $ .unwrap-or (get-env |image) |builtin
            whenFontsReady $ fn () $ render-app!
            add-watch *store :change $ fn (store prev) (render-app!)
            when mobile? $ render-control!
            start-control-loop! 8 on-control-event
            println "|App Started"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (js-nullish? build-errors)
              do (clear-phlox-caches!) (remove-watch *store :change)
                add-watch *store :change $ fn (store prev) (render-app!)
                render-app!
                when mobile? $ replace-control-loop! 8 on-control-event
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (comp-container @*store) dispatch! $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            [] phlox.core :refer $ [] render! clear-phlox-caches! on-control-event
            [] app.comp.container :refer $ [] comp-container
            [] app.schema :as schema
            [] phlox.config :refer $ [] dev? mobile?
            [] |nanoid :refer $ [] nanoid
            [] app.updater :refer $ [] updater
            [] |../assets/browser.mjs :refer $ [] whenFontsReady initializeImageInput
            [] |./calcit.build-errors :default build-errors
            [] |bottom-tip :default hud!
            [] touch-control.core :refer $ [] render-control! start-control-loop! replace-control-loop!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'HyperState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct HyperState (:scale 'Number)
            :shift $ :: 'List 'Number
          :examples $ []
          :schema $ :: 'StructDef
        'KaleidoState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct KaleidoState (:n 'Number)
            :shift $ :: 'List 'Number
            :scale 'Number
            :parts 'Number
            :radius 'Number
          :examples $ []
          :schema $ :: 'StructDef
        'NState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct NState (:n 'Number)
          :examples $ []
          :schema $ :: 'StructDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:tab 'Tag)
            :states (:: 'List 'Dynamic) 'Dynamic
            :hydrate-storage $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'EnumDef
        'TimeState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TimeState (:t 'Number)
          :examples $ []
          :schema $ :: 'StructDef
        'WindState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct WindState (:n 'Number) (:t 'Number)
          :examples $ []
          :schema $ :: 'StructDef
        'normalize-HyperState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-HyperState (data)
            if (struct? data)
              if (&struct:matches? data HyperState) (assert-type data 'app.schema/HyperState) (raise |Unexpected-HyperState)
              decode-map-as data 'app.schema/HyperState
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/HyperState)
            :args $ [] 'Dynamic
        'normalize-KaleidoState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-KaleidoState (data)
            if (struct? data)
              if (&struct:matches? data KaleidoState) (assert-type data 'app.schema/KaleidoState) (raise |Unexpected-KaleidoState)
              decode-map-as data 'app.schema/KaleidoState
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/KaleidoState)
            :args $ [] 'Dynamic
        'normalize-NState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-NState (data)
            if (struct? data)
              if (&struct:matches? data NState) (assert-type data 'app.schema/NState) (raise |Unexpected-NState)
              decode-map-as data 'app.schema/NState
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/NState)
            :args $ [] 'Dynamic
        'normalize-TimeState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-TimeState (data)
            if (struct? data)
              if (&struct:matches? data TimeState) (assert-type data 'app.schema/TimeState) (raise |Unexpected-TimeState)
              decode-map-as data 'app.schema/TimeState
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/TimeState)
            :args $ [] 'Dynamic
        'normalize-WindState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-WindState (data)
            if (struct? data)
              if (&struct:matches? data WindState) (assert-type data 'app.schema/WindState) (raise |Unexpected-WindState)
              let
                  m $ decode-map-as data $ :: 'Map 'Tag 'Dynamic
                decode-map-as
                  assoc m :t $ .unwrap-or (get m :t) 0
                  , 'app.schema/WindState
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/WindState)
            :args $ [] 'Dynamic
        'normalize-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-op (op)
            match op
              (:tab tab)
                Op :tab $ decode-map-as tab 'Tag
              (:states cursor data)
                Op :states
                  decode-map-as cursor $ :: 'List 'Dynamic
                  , data
              (:hydrate-storage data)
                Op :hydrate-storage $ decode-map-as data $ :: 'Map 'Tag 'Dynamic
              _ $ raise |Unknown-operation
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'app.schema/Op)
            :args $ [] 'Enum
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} (:tab nil)
              :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:tab tab) (assoc store :tab tab)
              (:states cursor state) (update-states store cursor state)
              (:hydrate-storage data) data
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'app.schema/Op 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ [] phlox.cursor :refer $ [] update-states
