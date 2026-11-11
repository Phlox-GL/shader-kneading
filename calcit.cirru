
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
          :schema $ quote $ Fn (Map schema/CoordKey schema/ControlBranchField) (-> phlox.schema/PhloxElement) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.bending
          :require
            phlox.core :refer $ mesh
            app.config :refer $ inline-shader
            app.schema :as schema
    'app.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-container (store)
            let
                states $ :states store
                tab $ :tab store
              container ({})
                match tab
                  :moon $ comp-moon-demo $ decode-map-as (>> states :moon) (Map app.schema/CoordKey app.schema/ControlBranchField)
                  :fake-3d $ comp-fake-3d $ decode-map-as (>> states :fake-3d) (Map app.schema/CoordKey app.schema/ControlBranchField)
                  :isohypse $ comp-isohypse $ decode-map-as (>> states :isohypse) (Map app.schema/CoordKey app.schema/ControlBranchField)
                  :star-trail $ comp-star-trail $ decode-map-as (>> states :star-trail) (Map app.schema/CoordKey app.schema/ControlBranchField)
                  :star-link $ comp-star-link
                  :wind-ring $ comp-wind-ring $ decode-map-as (>> states :wind-ring) (Map app.schema/CoordKey app.schema/ControlBranchField)
                  :bending $ comp-bending $ decode-map-as (>> states :bending) (Map app.schema/CoordKey app.schema/ControlBranchField)
                  :kaleidoscope $ comp-kaleidoscope $ decode-map-as (>> states :kaleidoscope) (Map app.schema/CoordKey app.schema/ControlBranchField)
                  :hyper-grid $ comp-hyper-grid $ decode-map-as (>> states :hyper-grid) (Map app.schema/CoordKey app.schema/ControlBranchField)
                  _ $ text $ {}
                    :text $ str "|Unknown tab " tab
                    :position $ [] 1 1
                    :style $ {} (:font-size 32) (:font-family "|Josefin Sans")
                      :fill $ hslx 10 100 70
                comp-tabs
                  [] ([] :moon |Moon) ([] :fake-3d "|Fake 3d") ([] :isohypse |Isohypse) ([] :star-link "|Star Link") ([] :star-trail "|Star Trail") ([] :wind-ring "|Wind Ring") ([] :bending |Bending) ([] :kaleidoscope |Kaleidoscope) ([] :hyper-grid "|Hyper Lens")
                  , tab
                    {} $ :position $ [] -448 -300
                    fn (t d!)
                      hint-fn $ Fn Tag
                        Fn app.schema/NavigationOp $ -> Unit
                        -> Unit
                      d! $ app.schema/NavigationOp :tab t
                      , &unit
          :examples $ []
          :schema $ quote $ Fn app.schema/Store (-> phlox.schema/PhloxElement)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require
            phlox.core :refer $ container >> text hslx
            phlox.comp.tabs :refer $ comp-tabs
            app.comp.moon-demo :refer $ comp-moon-demo
            app.comp.fake-3d :refer $ comp-fake-3d
            app.comp.isohypse :refer $ comp-isohypse comp-wind-ring
            app.comp.star-trail :refer $ comp-star-trail comp-star-link
            app.comp.bending :refer $ comp-bending
            app.comp.kaleidoscope :refer $ comp-kaleidoscope
            app.comp.hyper-grid :refer $ comp-hyper-grid
    'app.comp.fake-3d $ %{} 'FileEntry
      :defs $ {}
        'comp-fake-3d $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-fake-3d (states)
            let
                state $ schema/normalize-NState $ .unwrap-or (get states :data) (schema/NState :n 1)
              mesh $ {}
                :position $ [] 0 0
                :geometry $ {}
                  :attributes $ [] $ {} (:id |aVertexPosition) (:size 3)
                    :buffer $ concat & $ ->
                      [] ([] -40 -40 0) ([] 40 -40 0) ([] 40 40 0) ([] -40 40 0) ([] -40 -40 -80) ([] 40 -40 -80) ([] 40 40 -80) ([] -40 40 -80)
                      map move-x
                      map transform-3d
                  :index $ concat & $ [] ([] 0 1) ([] 1 2) ([] 2 3) ([] 0 3) ([] 0 4) ([] 4 5) ([] 5 6) ([] 6 7) ([] 4 7) ([] 1 5) ([] 2 6) ([] 3 7)
                :draw-mode :line-strip
                :shader $ {}
                  :vertex-source $ inline-shader |fake-3d.vert
                  :fragment-source $ inline-shader |fake-3d.frag
                :uniforms $ js-object $ :n (:n state)
          :examples $ []
          :schema $ quote $ Fn (Map schema/CoordKey schema/ControlBranchField) (-> phlox.schema/PhloxElement) (:features :js-ffi)
        'move-x $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn move-x (point)
            -> point
              map $ fn (p) (* p 2)
              update 0 $ fn (x) (+ x 0)
              update 1 $ fn (y) (+ y 0)
              update 2 $ fn (z) (- z 1200)
          :examples $ []
          :schema $ quote $ Fn (List Number)
            -> $ List Number
        'screen-vec $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def screen-vec ([] 120 50 -600)
          :examples $ []
          :schema $ quote $ List Number
        'square $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn square (x) (&* x x)
          :examples $ []
          :schema $ quote $ Fn Number (-> Number)
        'sum-squares $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn sum-squares (a b)
            &+ (&* a a) (&* b b)
          :examples $ []
          :schema $ quote $ Fn Number Number (-> Number)
        'transform-3d $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn transform-3d (point)
            let
                ; look-distance $ new-lookat-point
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
          :schema $ quote $ Fn (List Number)
            -> $ List Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.fake-3d
          :require
            phlox.core :refer $ mesh
            app.config :refer $ inline-shader
            app.schema :as schema
    'app.comp.hyper-grid $ %{} 'FileEntry
      :defs $ {} $ 'comp-hyper-grid
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-hyper-grid (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  List app.schema/CoordKey
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
                      d! $ app.schema/DrawingOp :set-drawing cursor $ assoc state :shift
                        decode-map-as position $ List Number
                comp-slider (>> states :scale)
                  {} (:title |scale) (:unit 0.01) (:min 0.5) (:max 4)
                    :position $ [] 160 -360
                    :fill $ hslx 50 90 70
                    :color $ hslx 200 90 30
                    :value $ :scale state
                    :on-change $ fn (value d!)
                      d! $ app.schema/DrawingOp :set-drawing cursor $ assoc state :scale (decode-map-as value 'Number)
          :examples $ []
          :schema $ quote $ Fn (Map schema/CoordKey schema/ControlBranchField) (-> phlox.schema/PhloxElement) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.hyper-grid
          :require
            phlox.core :refer $ mesh group >> hslx
            app.config :refer $ inline-shader
            app.schema :as schema
            phlox.comp.drag-point :refer $ comp-drag-point
            phlox.comp.slider :refer $ comp-slider
    'app.comp.isohypse $ %{} 'FileEntry
      :defs $ {}
        'comp-isohypse $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-isohypse (states)
            let
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
          :schema $ quote $ Fn (Map schema/CoordKey schema/ControlBranchField) (-> phlox.schema/PhloxElement) (:features :js-ffi)
        'comp-wind-ring $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-wind-ring (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  List app.schema/CoordKey
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
                  /
                    decode-map-as (js/performance.now) 'Number
                    , 1000
                :on $ {} $ :pointermove
                  fn (e d!)
                    d! $ app.schema/DrawingOp :set-drawing cursor $ assoc state :t
                      inc $ :t state
          :examples $ []
          :schema $ quote $ Fn (Map schema/CoordKey schema/ControlBranchField) (-> phlox.schema/PhloxElement) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.isohypse
          :require
            phlox.core :refer $ mesh
            app.config :refer $ inline-shader
            app.schema :as schema
    'app.comp.kaleidoscope $ %{} 'FileEntry
      :defs $ {} $ 'comp-kaleidoscope
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-kaleidoscope (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  List app.schema/CoordKey
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
                      d! $ app.schema/DrawingOp :set-drawing cursor $ assoc state :shift
                        decode-map-as position $ List Number
                comp-slider (>> states :scale)
                  {} (:title |scale) (:unit 0.01) (:min 0.001) (:max 2.0)
                    :position $ [] 20 -360
                    :fill $ hslx 50 90 70
                    :color $ hslx 200 90 30
                    :value $ :scale state
                    :on-change $ fn (value d!)
                      d! $ app.schema/DrawingOp :set-drawing cursor $ assoc state :scale (decode-map-as value 'Number)
                comp-slider (>> states :parts)
                  {} (:title |parts) (:unit 0.01) (:min 1.99) (:max 12)
                    :position $ [] 160 -360
                    :fill $ hslx 50 90 70
                    :color $ hslx 200 90 30
                    :value $ :parts state
                    :on-change $ fn (value d!)
                      d! $ app.schema/DrawingOp :set-drawing cursor $ assoc state :parts (decode-map-as value 'Number)
                comp-slider (>> states :radius)
                  {} (:title |radius) (:unit 0.01) (:min 0.1) (:max 0.9)
                    :position $ [] 300 -360
                    :fill $ hslx 50 90 70
                    :color $ hslx 200 90 30
                    :value $ :radius state
                    :on-change $ fn (value d!)
                      d! $ app.schema/DrawingOp :set-drawing cursor $ assoc state :radius (decode-map-as value 'Number)
          :examples $ []
          :schema $ quote $ Fn (Map schema/CoordKey schema/ControlBranchField) (-> phlox.schema/PhloxElement) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.kaleidoscope
          :require
            phlox.core :refer $ mesh group >> hslx
            app.config :refer $ inline-shader
            app.schema :as schema
            phlox.comp.drag-point :refer $ comp-drag-point
            phlox.comp.slider :refer $ comp-slider
            |../assets/browser.mjs :refer $ imageTexture
    'app.comp.moon-demo $ %{} 'FileEntry
      :defs $ {} $ 'comp-moon-demo
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-moon-demo (states)
            let
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
          :schema $ quote $ Fn (Map schema/CoordKey schema/ControlBranchField) (-> phlox.schema/PhloxElement) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.moon-demo
          :require
            phlox.core :refer $ mesh
            app.config :refer $ inline-shader
            app.schema :as schema
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
          :schema $ quote $ Fn (-> phlox.schema/PhloxElement) (:features :js-ffi)
        'comp-star-trail $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-star-trail (states)
            let
                cursor $ decode-map-as
                  .unwrap $ get states :cursor
                  List app.schema/CoordKey
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
                  /
                    decode-map-as (js/performance.now) 'Number
                    , 1000
                :on $ {} $ :pointermove
                  fn (e d!)
                    d! $ app.schema/DrawingOp :set-drawing cursor $ assoc state :t
                      inc $ :t state
          :examples $ []
          :schema $ quote $ Fn (Map schema/CoordKey schema/ControlBranchField) (-> phlox.schema/PhloxElement) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.star-trail
          :require
            phlox.core :refer $ mesh
            app.config :refer $ inline-shader
            app.schema :as schema
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'inline-shader $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro inline-shader (name)
            read-file $ str |shaders/ name
          :examples $ []
          :schema $ quote $ Macro (Expr String)
            -> $ Expr String
            :capabilities :fs-read
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css)
              :cdn-url |https://cos-sh.tiye.me/Phlox-GL/shader-kneading/
              :title |Phlox
              :icon |http://cdn.tiye.me/logo/quamolit.png
              :storage-key |phlox
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store schema/store
          :examples $ []
          :schema $ quote $ Ref schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            reset! *store $ updater @*store op
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/Op (-> Unit)
        'dispatch-phlox! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-phlox! (raw)
            let
                kind $ enum-definition raw
              cond
                  = kind $ Some app.schema/NavigationOp
                  dispatch! $ decode-map-as raw 'app.schema/NavigationOp
                (= kind (Some app.schema/WidgetOp))
                  dispatch! $ decode-map-as raw 'app.schema/WidgetOp
                (= kind (Some app.schema/DrawingOp))
                  dispatch! $ decode-map-as raw 'app.schema/DrawingOp
                true $ match raw
                  (:states cursor data)
                    dispatch! $ schema/WidgetOp :states
                      decode-map-as cursor $ List app.schema/CoordKey
                      decode-map-as data $ Map Tag schema/WidgetValue
                  _ $ raise |Unknown-operation
          :examples $ []
          :schema $ quote $ Fn AnyEnum (-> Unit) (:open :decode)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (; js/console.log PIXI)
            if dev? $ load-console-formatter!
            initializeImageInput
              = |input $ .unwrap-or (get-env |image) |builtin
              fn () $ render-app!
            whenFontsReady $ fn () $ render-app!
            add-watch! *store :change $ fn (store prev) (render-app!)
            when mobile? $ render-control!
            start-control-loop! 8 on-control-event
            println "|App Started"
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (js-nullish? build-errors)
              do (clear-phlox-caches!) (remove-watch! *store :change)
                add-watch! *store :change $ fn (store prev) (render-app!)
                render-app!
                when mobile? $ replace-control-loop! 8 on-control-event
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (comp-container @*store) dispatch-phlox! $ {}
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            phlox.core :refer $ render! clear-phlox-caches! on-control-event
            app.comp.container :refer $ comp-container
            app.schema :as schema
            phlox.config :refer $ dev? mobile?
            app.updater :refer $ updater
            |../assets/browser.mjs :refer $ whenFontsReady initializeImageInput
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            touch-control.core :refer $ render-control! start-control-loop! replace-control-loop!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'ControlBranchField $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ControlBranchField Bool Number (List CoordKey) DrawingState NState (Map CoordKey ControlNode)
          :examples $ []
          :schema $ quote UnionDef
        'ControlNode $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion ControlNode WidgetValue DrawingState NState (Map CoordKey ControlNode)
          :examples $ []
          :schema $ quote UnionDef
        'CoordKey $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion CoordKey Tag String Number
          :examples $ []
          :schema $ quote UnionDef
        'DrawingOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum DrawingOp
            :set-drawing (List app.schema/CoordKey) app.schema/DrawingState
          :examples $ []
          :schema $ quote EnumDef
        'DrawingState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion DrawingState HyperState KaleidoState TimeState WindState
          :examples $ []
          :schema $ quote UnionDef
        'HyperState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct HyperState (:scale Number)
            :shift $ List Number
          :examples $ []
          :schema $ quote StructDef
        'KaleidoState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct KaleidoState (:n Number)
            :shift $ List Number
            :scale Number
            :parts Number
            :radius Number
          :examples $ []
          :schema $ quote StructDef
        'NState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct NState (:n Number)
          :examples $ []
          :schema $ quote StructDef
        'NavigationOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum NavigationOp (:tab Tag)
          :examples $ []
          :schema $ quote EnumDef
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion Op NavigationOp WidgetOp DrawingOp
          :examples $ []
          :schema $ quote UnionDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:tab Tag)
            :states $ Map Tag ControlNode
          :examples $ []
          :schema $ quote StructDef
        'TimeState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TimeState (:t Number)
          :examples $ []
          :schema $ quote StructDef
        'WidgetOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum WidgetOp
            :states (List app.schema/CoordKey) (Map Tag app.schema/WidgetValue)
          :examples $ []
          :schema $ quote EnumDef
        'WidgetValue $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion WidgetValue Bool Number (List Number)
          :examples $ []
          :schema $ quote UnionDef
        'WindState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct WindState (:n Number) (:t Number)
          :examples $ []
          :schema $ quote StructDef
        'normalize-HyperState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-HyperState (data)
            if (struct? data)
              struct-match data (HyperState state state)
                _ unexpected $ raise |Unexpected-HyperState
              decode-map-as data 'app.schema/HyperState
          :examples $ []
          :schema $ quote $ Fn Input (-> HyperState) (:generics Input)
        'normalize-KaleidoState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-KaleidoState (data)
            if (struct? data)
              struct-match data (KaleidoState state state)
                _ unexpected $ raise |Unexpected-KaleidoState
              decode-map-as data 'app.schema/KaleidoState
          :examples $ []
          :schema $ quote $ Fn Input (-> KaleidoState) (:generics Input)
        'normalize-NState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-NState (data)
            if (struct? data)
              struct-match data (NState state state)
                _ unexpected $ raise |Unexpected-NState
              decode-map-as data 'app.schema/NState
          :examples $ []
          :schema $ quote $ Fn Input (-> NState) (:generics Input)
        'normalize-TimeState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-TimeState (data)
            if (struct? data)
              struct-match data (TimeState state state)
                _ unexpected $ raise |Unexpected-TimeState
              decode-map-as data 'app.schema/TimeState
          :examples $ []
          :schema $ quote $ Fn Input (-> TimeState) (:generics Input)
        'normalize-WindState $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn normalize-WindState (data)
            if (struct? data)
              struct-match data (WindState state state)
                _ unexpected $ raise |Unexpected-WindState
              decode-map-as data 'app.schema/WindState
          :examples $ []
          :schema $ quote $ Fn Input (-> WindState) (:generics Input)
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :tab :kaleidoscope :states $ {}
          :examples $ []
          :schema $ quote Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'update-widget $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn update-widget (store cursor state)
            &struct:assoc store :states $ decode-map-as
              assoc-in (:states store) (conj cursor :data) state
              Map Tag app.schema/ControlNode
          :examples $ []
          :schema $ quote $ Fn app.schema/Store (List app.schema/CoordKey) app.schema/ControlNode (-> app.schema/Store)
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op)
            match op
              (app.schema/NavigationOp navigation)
                match navigation $
                  :tab tab
                  &struct:assoc store :tab tab
              (app.schema/WidgetOp widget)
                match widget $
                  :states cursor state
                  update-widget store cursor state
              (app.schema/DrawingOp drawing)
                match drawing $
                  :set-drawing cursor state
                  update-widget store cursor state
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op (-> app.schema/Store)
          :tests $ [] $ %{} 'TestEntry (:name |routes-tab-and-controls)
            :code $ quote $ let
                initial $ &struct:assoc app.schema/store :tab :moon
                changed $ updater initial $ app.schema/WidgetOp :states ([] :kaleidoscope)
                  {} $ :scale 1.2
                drawing $ app.schema/KaleidoState :n 1 :shift ([] 0 0) :scale 1.6 :parts 3 :radius 1
                drawn $ updater changed $ app.schema/DrawingOp :set-drawing ([] :kaleidoscope) drawing
                nested $ updater drawn $ app.schema/WidgetOp :states ([] :kaleidoscope :spin 0)
                  {} $ :dragging? true
                render-branch $ decode-map-as
                  phlox.core/>> (:states nested) :kaleidoscope
                  Map app.schema/CoordKey app.schema/ControlBranchField
                nested-branch $ decode-map-as
                  .unwrap $ get (:states nested) :kaleidoscope
                  Map app.schema/CoordKey app.schema/ControlNode
                spin-branch $ decode-map-as
                  .unwrap $ get nested-branch :spin
                  Map app.schema/CoordKey app.schema/ControlNode
                child-branch $ decode-map-as
                  .unwrap $ get spin-branch 0
                  Map app.schema/CoordKey app.schema/ControlNode
                changed-branch $ decode-map-as
                  .unwrap $ get (:states changed) :kaleidoscope
                  Map app.schema/CoordKey app.schema/ControlNode
                drawn-branch $ decode-map-as
                  .unwrap $ get (:states drawn) :kaleidoscope
                  Map app.schema/CoordKey app.schema/ControlNode
              assert=
                Some $ {} $ :scale 1.2
                get changed-branch :data
              assert= :hyper-grid $ :tab $ updater changed (app.schema/NavigationOp :tab :hyper-grid)
              assert= (Some drawing) (get drawn-branch :data)
              assert= (Some drawing) (get nested-branch :data)
              assert=
                Some $ {} $ :dragging? true
                get child-branch :data
              assert=
                Some $ [] :kaleidoscope
                get render-branch :cursor
              assert= (Some drawing) (get render-branch :data)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
