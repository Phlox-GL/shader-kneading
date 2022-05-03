
{}
  :configs $ {} (:compact-output? true) (:extension |.cljs) (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.4.10)
    :modules $ [] |memof/ |lilac/ |respo.calcit/ |respo-ui.calcit/ |phlox/ |touch-control/
  :entries $ {}
  :ir $ {} (:package |app)
    :files $ {}
      |app.comp.container $ {}
        :defs $ {}
          |comp-container $ {} (:at 1573356299931) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1615450365814) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1573356299931) (:by |rJG4IHzWf) (:text |comp-container) (:type :leaf)
              |r $ {} (:at 1573356299931) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1573662792335) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
              |t $ {} (:at 1574442738592) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1582367227989) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                  |T $ {} (:at 1574442742932) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                  |j $ {} (:at 1574442744071) (:by |rJG4IHzWf) (:text "|\"Store") (:type :leaf)
                  |r $ {} (:at 1574442745655) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                  |v $ {} (:at 1574442779990) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1574442779990) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                      |j $ {} (:at 1574442779990) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
              |v $ {} (:at 1583036824444) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1583036827332) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                  |L $ {} (:at 1583036827630) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1583036827827) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1583036828777) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                          |j $ {} (:at 1583036829493) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1583036830034) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                      |j $ {} (:at 1583036831664) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1583036832446) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
                          |j $ {} (:at 1583036832651) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1583036833411) (:by |rJG4IHzWf) (:text |:states) (:type :leaf)
                              |j $ {} (:at 1583036834181) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                  |T $ {} (:at 1574353986671) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1574353987962) (:by |rJG4IHzWf) (:text |container) (:type :leaf)
                      |L $ {} (:at 1574353988241) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1574353988566) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |k $ {} (:at 1651509270272) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651509274225) (:by |rJG4IHzWf) (:text |comp-moon-demo) (:type :leaf)
                          |b $ {} (:at 1651509319470) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651509320376) (:by |rJG4IHzWf) (:text |>>) (:type :leaf)
                              |b $ {} (:at 1651509321840) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
                              |h $ {} (:at 1651509323541) (:by |rJG4IHzWf) (:text |:moon) (:type :leaf)
        :ns $ {} (:at 1573356292089) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1573356292089) (:by |rJG4IHzWf) (:text |ns) (:type :leaf)
            |j $ {} (:at 1573356292089) (:by |rJG4IHzWf) (:text |app.comp.container) (:type :leaf)
            |r $ {} (:at 1573356347927) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1573356351680) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |j $ {} (:at 1573356351873) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1573356354451) (:by |rJG4IHzWf) (:text |phlox.core) (:type :leaf)
                    |r $ {} (:at 1573356355219) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1573356355436) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |s $ {} (:at 1581850032842) (:by |rJG4IHzWf) (:text |g) (:type :leaf)
                        |t $ {} (:at 1581003569723) (:by |rJG4IHzWf) (:text |hslx) (:type :leaf)
                        |v $ {} (:at 1573974176863) (:by |rJG4IHzWf) (:text |rect) (:type :leaf)
                        |x $ {} (:at 1573974179009) (:by |rJG4IHzWf) (:text |circle) (:type :leaf)
                        |y $ {} (:at 1573974179800) (:by |rJG4IHzWf) (:text |text) (:type :leaf)
                        |yT $ {} (:at 1573974254119) (:by |rJG4IHzWf) (:text |container) (:type :leaf)
                        |yb $ {} (:at 1574181633700) (:by |rJG4IHzWf) (:text |graphics) (:type :leaf)
                        |yj $ {} (:at 1574007057783) (:by |rJG4IHzWf) (:text |create-list) (:type :leaf)
                        |yr $ {} (:at 1584639017252) (:by |rJG4IHzWf) (:text |>>) (:type :leaf)
                |x $ {} (:at 1583034151993) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1583034161865) (:by |rJG4IHzWf) (:text |phlox.comp.button) (:type :leaf)
                    |r $ {} (:at 1583034163079) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1583034163311) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1583034313642) (:by |rJG4IHzWf) (:text |comp-button) (:type :leaf)
                |yT $ {} (:at 1583040803587) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1583040803587) (:by |rJG4IHzWf) (:text |phlox.comp.drag-point) (:type :leaf)
                    |r $ {} (:at 1583040803587) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1583040803587) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1583040803587) (:by |rJG4IHzWf) (:text |comp-drag-point) (:type :leaf)
                |yyT $ {} (:at 1587288593017) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1587288596975) (:by |rJG4IHzWf) (:text |respo-ui.core) (:type :leaf)
                    |r $ {} (:at 1587288597735) (:by |rJG4IHzWf) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1587288598134) (:by |rJG4IHzWf) (:text |ui) (:type :leaf)
                |yyj $ {} (:at 1612613233615) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1612613236216) (:by |rJG4IHzWf) (:text |memof.alias) (:type :leaf)
                    |r $ {} (:at 1612613237132) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1612613237369) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1612613239222) (:by |rJG4IHzWf) (:text |memof-call) (:type :leaf)
                |z $ {} (:at 1651509279365) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651509281953) (:by |rJG4IHzWf) (:text |app.comp.moon-demo) (:type :leaf)
                    |b $ {} (:at 1651509282818) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651509283031) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651509287020) (:by |rJG4IHzWf) (:text |comp-moon-demo) (:type :leaf)
        :proc $ {} (:at 1573356292089) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
      |app.comp.moon-demo $ {}
        :configs $ {}
        :defs $ {}
          |comp-circle-demo $ {} (:at 1651509238397) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651509238397) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1651509238397) (:by |rJG4IHzWf) (:text |comp-circle-demo) (:type :leaf)
              |h $ {} (:at 1651509238397) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
          |comp-moon-demo $ {} (:at 1651509288897) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651509291071) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |b $ {} (:at 1651509288897) (:by |rJG4IHzWf) (:text |comp-moon-demo) (:type :leaf)
              |h $ {} (:at 1651509288897) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651509327256) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
              |l $ {} (:at 1651509369329) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1651509370847) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                  |L $ {} (:at 1651509371064) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651509371183) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651509372764) (:by |rJG4IHzWf) (:text |cursor) (:type :leaf)
                          |b $ {} (:at 1651509372973) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651509374191) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                              |b $ {} (:at 1651509375002) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
                      |b $ {} (:at 1651509375620) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651509376203) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
                          |b $ {} (:at 1651509376424) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651509380112) (:by |rJG4IHzWf) (:text |or) (:type :leaf)
                              |b $ {} (:at 1651509380335) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651509380884) (:by |rJG4IHzWf) (:text |:data) (:type :leaf)
                                  |b $ {} (:at 1651509381691) (:by |rJG4IHzWf) (:text |states) (:type :leaf)
                              |h $ {} (:at 1651509382262) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651509382637) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1651509382824) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651509390398) (:by |rJG4IHzWf) (:text |:n) (:type :leaf)
                                      |b $ {} (:at 1651509391468) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                  |T $ {} (:at 1651509292955) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651509295685) (:by |rJG4IHzWf) (:text |container) (:type :leaf)
                      |b $ {} (:at 1651509295883) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651509296193) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |h $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |mesh) (:type :leaf)
                          |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                              |h $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:position) (:type :leaf)
                                  |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                      |b $ {} (:at 1651509493848) (:by |rJG4IHzWf) (:text |100) (:type :leaf)
                                      |h $ {} (:at 1651509495620) (:by |rJG4IHzWf) (:text |100) (:type :leaf)
                              |l $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:geometry) (:type :leaf)
                                  |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:attributes) (:type :leaf)
                                          |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                              |h $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                  |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:id) (:type :leaf)
                                                      |b $ {} (:at 1651509936008) (:by |rJG4IHzWf) (:text ||aVertexPosition) (:type :leaf)
                                                  |h $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:size) (:type :leaf)
                                                      |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                                                  |l $ {} (:at 1651509979057) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1651509979057) (:by |rJG4IHzWf) (:text |:buffer) (:type :leaf)
                                                      |b $ {} (:at 1651509979057) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1651509979057) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                          |b $ {} (:at 1651509979057) (:by |rJG4IHzWf) (:text |-400) (:type :leaf)
                                                          |h $ {} (:at 1651509979057) (:by |rJG4IHzWf) (:text |-400) (:type :leaf)
                                                          |l $ {} (:at 1651510244128) (:by |rJG4IHzWf) (:text |400) (:type :leaf)
                                                          |o $ {} (:at 1651509979057) (:by |rJG4IHzWf) (:text |-400) (:type :leaf)
                                                          |q $ {} (:at 1651510246221) (:by |rJG4IHzWf) (:text |400) (:type :leaf)
                                                          |s $ {} (:at 1651509979057) (:by |rJG4IHzWf) (:text |400) (:type :leaf)
                                                          |t $ {} (:at 1651509979057) (:by |rJG4IHzWf) (:text |-400) (:type :leaf)
                                                          |u $ {} (:at 1651509979057) (:by |rJG4IHzWf) (:text |400) (:type :leaf)
                                              |l $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                                :data $ {}
                                                  |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                                  |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:id) (:type :leaf)
                                                      |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text ||aUvs) (:type :leaf)
                                                  |h $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:size) (:type :leaf)
                                                      |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                                                  |l $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                                    :data $ {}
                                                      |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:buffer) (:type :leaf)
                                                      |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                                        :data $ {}
                                                          |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                                          |b $ {} (:at 1651510133746) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                          |h $ {} (:at 1651510136641) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                          |l $ {} (:at 1651510241267) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                          |o $ {} (:at 1651510141778) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                          |q $ {} (:at 1651510242326) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                          |s $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                                          |t $ {} (:at 1651510441321) (:by |rJG4IHzWf) (:text |-1) (:type :leaf)
                                                          |u $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                      |h $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:index) (:type :leaf)
                                          |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                                              |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                              |h $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                                              |l $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                                              |o $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                              |q $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |3) (:type :leaf)
                                              |s $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |2) (:type :leaf)
                              |o $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:shader) (:type :leaf)
                                  |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                      |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:vertex-source) (:type :leaf)
                                          |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1651509503795) (:by |rJG4IHzWf) (:text |inline-shader) (:type :leaf)
                                              |b $ {} (:at 1651509510699) (:by |rJG4IHzWf) (:text ||moon.vert) (:type :leaf)
                                      |h $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:fragment-source) (:type :leaf)
                                          |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1651509505868) (:by |rJG4IHzWf) (:text |inline-shader) (:type :leaf)
                                              |b $ {} (:at 1651509508485) (:by |rJG4IHzWf) (:text ||moon.frag) (:type :leaf)
                              |q $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |:uniforms) (:type :leaf)
                                  |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |js-object) (:type :leaf)
                                      |h $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1651509608098) (:by |rJG4IHzWf) (:text |:n) (:type :leaf)
                                          |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:type :expr)
                                            :data $ {}
                                              |T $ {} (:at 1651509606748) (:by |rJG4IHzWf) (:text |:n) (:type :leaf)
                                              |b $ {} (:at 1651509489494) (:by |rJG4IHzWf) (:text |state) (:type :leaf)
          |inline-shader $ {} (:at 1651509512180) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1651509517150) (:by |rJG4IHzWf) (:text |defmacro) (:type :leaf)
              |b $ {} (:at 1651509512180) (:by |rJG4IHzWf) (:text |inline-shader) (:type :leaf)
              |h $ {} (:at 1651509512180) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651509515244) (:by |rJG4IHzWf) (:text |name) (:type :leaf)
              |l $ {} (:at 1651509518326) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651509519760) (:by |rJG4IHzWf) (:text |read-file) (:type :leaf)
                  |b $ {} (:at 1651509520014) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1651509520664) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                      |b $ {} (:at 1651509525126) (:by |rJG4IHzWf) (:text "|\"shaders/") (:type :leaf)
                      |h $ {} (:at 1651509526792) (:by |rJG4IHzWf) (:text |name) (:type :leaf)
        :ns $ {} (:at 1651509227822) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1651509227822) (:by |rJG4IHzWf) (:text |ns) (:type :leaf)
            |b $ {} (:at 1651509227822) (:by |rJG4IHzWf) (:text |app.comp.moon-demo) (:type :leaf)
            |h $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |b $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |phlox.core) (:type :leaf)
                    |b $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |g) (:type :leaf)
                        |b $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |hslx) (:type :leaf)
                        |h $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |rect) (:type :leaf)
                        |l $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |circle) (:type :leaf)
                        |o $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |text) (:type :leaf)
                        |q $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |container) (:type :leaf)
                        |s $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |graphics) (:type :leaf)
                        |t $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |create-list) (:type :leaf)
                        |u $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |>>) (:type :leaf)
                        |v $ {} (:at 1651509475924) (:by |rJG4IHzWf) (:text |mesh) (:type :leaf)
                |h $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |phlox.comp.button) (:type :leaf)
                    |b $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |comp-button) (:type :leaf)
                |l $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |phlox.comp.drag-point) (:type :leaf)
                    |b $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |comp-drag-point) (:type :leaf)
                |o $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |respo-ui.core) (:type :leaf)
                    |b $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |:as) (:type :leaf)
                    |h $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |ui) (:type :leaf)
                |q $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |memof.alias) (:type :leaf)
                    |b $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1651509260728) (:by |rJG4IHzWf) (:text |memof-call) (:type :leaf)
      |app.config $ {}
        :defs $ {}
          |site $ {} (:at 1545933382603) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1518157345496) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1518157327696) (:by |root) (:text |site) (:type :leaf)
              |r $ {} (:at 1518157327696) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1518157346643) (:by |root) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1527526861413) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527526864597) (:by |root) (:text |:dev-ui) (:type :leaf)
                      |x $ {} (:at 1540054307727) (:by |root) (:text "|\"http://localhost:8100/main.css") (:type :leaf)
                  |v $ {} (:at 1527526865931) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527526868617) (:by |root) (:text |:release-ui) (:type :leaf)
                      |j $ {} (:at 1527526887965) (:by |root) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css") (:type :leaf)
                  |w $ {} (:at 1528008960614) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1528008962775) (:by |root) (:text |:cdn-url) (:type :leaf)
                      |j $ {} (:at 1573292416508) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/phlox/") (:type :leaf)
                  |y $ {} (:at 1527868456422) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527868457305) (:by |root) (:text |:title) (:type :leaf)
                      |j $ {} (:at 1573292411084) (:by |rJG4IHzWf) (:text "|\"Phlox") (:type :leaf)
                  |yT $ {} (:at 1527868457696) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1527868458476) (:by |root) (:text |:icon) (:type :leaf)
                      |j $ {} (:at 1573292425255) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/logo/quamolit.png") (:type :leaf)
                  |yf $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1573294243713) (:by |rJG4IHzWf) (:text "|\"phlox") (:type :leaf)
        :ns $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1527788237503) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1527788237503) (:by |root) (:text |app.config) (:type :leaf)
            |n $ {} (:at 1649062761949) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |D $ {} (:at 1649062762982) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |T $ {} (:at 1649062761526) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1649062761526) (:by |rJG4IHzWf) (:text "|\"mobile-detect") (:type :leaf)
                    |b $ {} (:at 1649062761526) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1649062761526) (:by |rJG4IHzWf) (:text |mobile-detect) (:type :leaf)
        :proc $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
      |app.main $ {}
        :defs $ {}
          |*store $ {} (:at 1573662553239) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1612518324467) (:by |rJG4IHzWf) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1573662553239) (:by |rJG4IHzWf) (:text |*store) (:type :leaf)
              |r $ {} (:at 1573662562450) (:by |rJG4IHzWf) (:text |schema/store) (:type :leaf)
          |dispatch! $ {} (:at 1573662594481) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1573662594481) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1573662594481) (:by |rJG4IHzWf) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1573662594481) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1573662598886) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                  |j $ {} (:at 1573662603266) (:by |rJG4IHzWf) (:text |op-data) (:type :leaf)
              |x $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |when) (:type :leaf)
                  |j $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |and) (:type :leaf)
                      |j $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
                      |r $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |not=) (:type :leaf)
                          |j $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                          |r $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |:states) (:type :leaf)
                  |r $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                      |j $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text "|\"dispatch!") (:type :leaf)
                      |r $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                      |v $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-data) (:type :leaf)
              |y $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |let) (:type :leaf)
                  |j $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-id) (:type :leaf)
                          |j $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1643606538079) (:by |rJG4IHzWf) (:text |nanoid) (:type :leaf)
                      |j $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-time) (:type :leaf)
                          |j $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1622476150108) (:by |rJG4IHzWf) (:text |js/Date.now) (:type :leaf)
                  |r $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |reset!) (:type :leaf)
                      |j $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |*store) (:type :leaf)
                      |r $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |updater) (:type :leaf)
                          |j $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |@*store) (:type :leaf)
                          |r $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                          |v $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-data) (:type :leaf)
                          |x $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-id) (:type :leaf)
                          |y $ {} (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-time) (:type :leaf)
          |main! $ {} (:at 1548266583359) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1548266583359) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1548266583359) (:by |rJG4IHzWf) (:text |main!) (:type :leaf)
              |r $ {} (:at 1548266583359) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |x $ {} (:at 1548267246722) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1573356695965) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                  |T $ {} (:at 1548267254997) (:by |rJG4IHzWf) (:text |js/console.log) (:type :leaf)
                  |j $ {} (:at 1548267256875) (:by |rJG4IHzWf) (:text |PIXI) (:type :leaf)
              |x5 $ {} (:at 1629169679580) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1629169680159) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |L $ {} (:at 1629169690355) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
                  |T $ {} (:at 1619604279980) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1619604280258) (:by |rJG4IHzWf) (:text |load-console-formatter!) (:type :leaf)
              |yD $ {} (:at 1583685469966) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1583685471113) (:by |rJG4IHzWf) (:text |->) (:type :leaf)
                  |T $ {} (:at 1583685458471) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |5 $ {} (:at 1612518371822) (:by |rJG4IHzWf) (:text |new) (:type :leaf)
                      |D $ {} (:at 1649074551300) (:by |rJG4IHzWf) (:text |FontFaceObserver) (:type :leaf)
                      |L $ {} (:at 1583685465541) (:by |rJG4IHzWf) (:text "|\"Josefin Sans") (:type :leaf)
                  |j $ {} (:at 1583685473053) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1622473394612) (:by |rJG4IHzWf) (:text |.!load) (:type :leaf)
                  |r $ {} (:at 1583685474396) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1622473396717) (:by |rJG4IHzWf) (:text |.!then) (:type :leaf)
                      |j $ {} (:at 1583685475787) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1583685476122) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                          |j $ {} (:at 1583685476351) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612518724131) (:by |rJG4IHzWf) (:text |event) (:type :leaf)
                          |r $ {} (:at 1612598209322) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612598212748) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
              |yL $ {} (:at 1573662742473) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1573662744127) (:by |rJG4IHzWf) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1573662745368) (:by |rJG4IHzWf) (:text |*store) (:type :leaf)
                  |r $ {} (:at 1573662747477) (:by |rJG4IHzWf) (:text |:change) (:type :leaf)
                  |v $ {} (:at 1573662747891) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1573662748179) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1573662748480) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612523240288) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |j $ {} (:at 1612523241647) (:by |rJG4IHzWf) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1612598419615) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612598461873) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
              |yP $ {} (:at 1649062574418) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1649062574418) (:by |rJG4IHzWf) (:text |render-control!) (:type :leaf)
              |yR $ {} (:at 1649062574418) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1649062574418) (:by |rJG4IHzWf) (:text |start-control-loop!) (:type :leaf)
                  |b $ {} (:at 1649062574418) (:by |rJG4IHzWf) (:text |8) (:type :leaf)
                  |h $ {} (:at 1649062574418) (:by |rJG4IHzWf) (:text |on-control-event) (:type :leaf)
              |yT $ {} (:at 1573356701317) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1573356701317) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                  |j $ {} (:at 1573356701317) (:by |rJG4IHzWf) (:text "|\"App Started") (:type :leaf)
          |reload! $ {} (:at 1629390760417) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |D $ {} (:at 1629390761154) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |L $ {} (:at 1629390762875) (:by |rJG4IHzWf) (:text |reload!) (:type :leaf)
              |P $ {} (:at 1629390763423) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |T $ {} (:at 1629390769213) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1629390769642) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |L $ {} (:at 1629390769878) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629390771868) (:by |rJG4IHzWf) (:text |nil?) (:type :leaf)
                      |j $ {} (:at 1629390773740) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                  |T $ {} (:at 1548266585003) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629390768014) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |w $ {} (:at 1593275706640) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1593275715294) (:by |rJG4IHzWf) (:text |clear-phlox-caches!) (:type :leaf)
                      |xj $ {} (:at 1612598605762) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612598610437) (:by |rJG4IHzWf) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1612598614898) (:by |rJG4IHzWf) (:text |*store) (:type :leaf)
                          |r $ {} (:at 1612598623332) (:by |rJG4IHzWf) (:text |:change) (:type :leaf)
                      |y $ {} (:at 1612598431174) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612598431174) (:by |rJG4IHzWf) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1612598431174) (:by |rJG4IHzWf) (:text |*store) (:type :leaf)
                          |r $ {} (:at 1612598431174) (:by |rJG4IHzWf) (:text |:change) (:type :leaf)
                          |v $ {} (:at 1612598431174) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612598431174) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1612598431174) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612598431174) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                                  |j $ {} (:at 1612598431174) (:by |rJG4IHzWf) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1612598431174) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612598450034) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
                      |yT $ {} (:at 1612598631582) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612598631582) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
                      |yb $ {} (:at 1649062605991) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1649062605991) (:by |rJG4IHzWf) (:text |replace-control-loop!) (:type :leaf)
                          |b $ {} (:at 1649062605991) (:by |rJG4IHzWf) (:text |8) (:type :leaf)
                          |h $ {} (:at 1649062605991) (:by |rJG4IHzWf) (:text |on-control-event) (:type :leaf)
                      |yj $ {} (:at 1629390777796) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629390783109) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                          |j $ {} (:at 1629390803362) (:by |rJG4IHzWf) (:text "|\"ok~") (:type :leaf)
                          |r $ {} (:at 1629390804302) (:by |rJG4IHzWf) (:text "|\"Ok") (:type :leaf)
                  |j $ {} (:at 1629390805229) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629390808107) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                      |j $ {} (:at 1629390809537) (:by |rJG4IHzWf) (:text "|\"error") (:type :leaf)
                      |r $ {} (:at 1629390812951) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
          |render-app! $ {} (:at 1612598213430) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1612598215112) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1612598213430) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1612598213430) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1613831657319) (:by |rJG4IHzWf) (:text |?) (:type :leaf)
                  |j $ {} (:at 1613831657933) (:by |rJG4IHzWf) (:text |arg) (:type :leaf)
              |v $ {} (:at 1612598216289) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1612598216289) (:by |rJG4IHzWf) (:text |render!) (:type :leaf)
                  |j $ {} (:at 1612598216289) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1612598216289) (:by |rJG4IHzWf) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1612598216289) (:by |rJG4IHzWf) (:text |@*store) (:type :leaf)
                  |r $ {} (:at 1612598216289) (:by |rJG4IHzWf) (:text |dispatch!) (:type :leaf)
                  |v $ {} (:at 1612598472049) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1629169711960) (:by |rJG4IHzWf) (:text |or) (:type :leaf)
                      |L $ {} (:at 1613831661153) (:by |rJG4IHzWf) (:text |arg) (:type :leaf)
                      |T $ {} (:at 1612598216289) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612598216289) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
        :ns $ {} (:at 1548266580449) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
            |T $ {} (:at 1548266580449) (:by |rJG4IHzWf) (:text |ns) (:type :leaf)
            |j $ {} (:at 1548266580449) (:by |rJG4IHzWf) (:text |app.main) (:type :leaf)
            |r $ {} (:at 1548267234269) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1548267234910) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |j $ {} (:at 1548267235111) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |X $ {} (:at 1548267268346) (:by |rJG4IHzWf) (:text "|\"pixi.js") (:type :leaf)
                    |b $ {} (:at 1548267239536) (:by |rJG4IHzWf) (:text |:as) (:type :leaf)
                    |j $ {} (:at 1548267236197) (:by |rJG4IHzWf) (:text |PIXI) (:type :leaf)
                |r $ {} (:at 1573356495638) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1573356502361) (:by |rJG4IHzWf) (:text |phlox.core) (:type :leaf)
                    |r $ {} (:at 1573356503682) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1573356503870) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1573356508921) (:by |rJG4IHzWf) (:text |render!) (:type :leaf)
                        |r $ {} (:at 1593275719006) (:by |rJG4IHzWf) (:text |clear-phlox-caches!) (:type :leaf)
                        |t $ {} (:at 1649062657337) (:by |rJG4IHzWf) (:text |update-viewer!) (:type :leaf)
                        |u $ {} (:at 1649145601535) (:by |rJG4IHzWf) (:text |on-control-event) (:type :leaf)
                |v $ {} (:at 1573356509898) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1622482559187) (:by |rJG4IHzWf) (:text |app.comp.container) (:type :leaf)
                    |r $ {} (:at 1573356520731) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1573356520963) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1573356527039) (:by |rJG4IHzWf) (:text |comp-container) (:type :leaf)
                |x $ {} (:at 1573662565143) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1622482350875) (:by |rJG4IHzWf) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1573662571099) (:by |rJG4IHzWf) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1573662571751) (:by |rJG4IHzWf) (:text |schema) (:type :leaf)
                |y $ {} (:at 1580869162931) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1649145594407) (:by |rJG4IHzWf) (:text |phlox.config) (:type :leaf)
                    |r $ {} (:at 1580869166624) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1580869166807) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1580869168063) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
                        |n $ {} (:at 1649062582689) (:by |rJG4IHzWf) (:text |mobile?) (:type :leaf)
                |yT $ {} (:at 1580869187547) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1643606542981) (:by |rJG4IHzWf) (:text "|\"nanoid") (:type :leaf)
                    |r $ {} (:at 1643606544523) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1643606547824) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1643606547106) (:by |rJG4IHzWf) (:text |nanoid) (:type :leaf)
                |yj $ {} (:at 1580869200657) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1622482355845) (:by |rJG4IHzWf) (:text |app.updater) (:type :leaf)
                    |r $ {} (:at 1580869206447) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1580869206643) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1580869207738) (:by |rJG4IHzWf) (:text |updater) (:type :leaf)
                |yr $ {} (:at 1583685438044) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |n $ {} (:at 1612538257268) (:by |rJG4IHzWf) (:text "|\"fontfaceobserver-es") (:type :leaf)
                    |r $ {} (:at 1649074554488) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |v $ {} (:at 1583685444335) (:by |rJG4IHzWf) (:text |FontFaceObserver) (:type :leaf)
                |yv $ {} (:at 1629390819770) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629390819770) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1629390819770) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629390819770) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                |yx $ {} (:at 1629390819770) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1629390819770) (:by |rJG4IHzWf) (:text "|\"bottom-tip") (:type :leaf)
                    |j $ {} (:at 1629390819770) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1629390819770) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                |z $ {} (:at 1649062671808) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1649062671808) (:by |rJG4IHzWf) (:text |touch-control.core) (:type :leaf)
                    |b $ {} (:at 1649062671808) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1649062671808) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1649062671808) (:by |rJG4IHzWf) (:text |render-control!) (:type :leaf)
                        |b $ {} (:at 1649062671808) (:by |rJG4IHzWf) (:text |start-control-loop!) (:type :leaf)
                        |h $ {} (:at 1649062671808) (:by |rJG4IHzWf) (:text |replace-control-loop!) (:type :leaf)
        :proc $ {} (:at 1548266580449) (:by |rJG4IHzWf) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |store $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1574442604907) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                      |j $ {} (:at 1574442608347) (:by |rJG4IHzWf) (:text |:drafts) (:type :leaf)
                  |v $ {} (:at 1573662577190) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1573662584008) (:by |rJG4IHzWf) (:text |:x) (:type :leaf)
                      |j $ {} (:at 1574354112693) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                  |x $ {} (:at 1582911206025) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1582911213777) (:by |rJG4IHzWf) (:text |:keyboard-on?) (:type :leaf)
                      |j $ {} (:at 1582911214855) (:by |rJG4IHzWf) (:text |false) (:type :leaf)
                  |y $ {} (:at 1582911216588) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1582911257309) (:by |rJG4IHzWf) (:text |:counted) (:type :leaf)
                      |j $ {} (:at 1582911223411) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                  |yT $ {} (:at 1583036803879) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1583036804777) (:by |rJG4IHzWf) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1583036805113) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1583036806368) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                  |yj $ {} (:at 1584639518204) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1584639519390) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                      |j $ {} (:at 1584639519989) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584639519838) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.schema) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |updater) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:by |root) (:text |op-data) (:type :leaf)
                  |v $ {} (:at 1519489491135) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1519489492110) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1629169668827) (:by |rJG4IHzWf) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                  |n $ {} (:at 1629169671430) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1629169671430) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |j $ {} (:at 1629169671430) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1629169671430) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                          |j $ {} (:at 1629169671430) (:by |rJG4IHzWf) (:text "|\"unknown op") (:type :leaf)
                          |r $ {} (:at 1629169671430) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                          |v $ {} (:at 1629169671430) (:by |rJG4IHzWf) (:text |op-data) (:type :leaf)
                      |r $ {} (:at 1629169671430) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                  |r $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |:add-x) (:type :leaf)
                      |j $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                          |j $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |r $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |:x) (:type :leaf)
                          |v $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                              |r $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                                  |j $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |>) (:type :leaf)
                                      |j $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                                      |r $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |10) (:type :leaf)
                                  |r $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |0) (:type :leaf)
                                  |v $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |+) (:type :leaf)
                                      |j $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |x) (:type :leaf)
                                      |r $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |1) (:type :leaf)
                  |v $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                      |j $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |assoc) (:type :leaf)
                          |j $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |r $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |:tab) (:type :leaf)
                          |v $ {} (:at 1580869092576) (:by |rJG4IHzWf) (:text |op-data) (:type :leaf)
                  |vT $ {} (:at 1582911295239) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1582911297225) (:by |rJG4IHzWf) (:text |:toggle-keyboard) (:type :leaf)
                      |j $ {} (:at 1582911298200) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1582911298810) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                          |j $ {} (:at 1582911303041) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |r $ {} (:at 1582911310272) (:by |rJG4IHzWf) (:text |:keyboard-on?) (:type :leaf)
                          |v $ {} (:at 1582911311397) (:by |rJG4IHzWf) (:text |not) (:type :leaf)
                  |vj $ {} (:at 1582911312945) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1582911314686) (:by |rJG4IHzWf) (:text |:counted) (:type :leaf)
                      |j $ {} (:at 1582911315115) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1582911316804) (:by |rJG4IHzWf) (:text |update) (:type :leaf)
                          |j $ {} (:at 1582911317557) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |r $ {} (:at 1582911318980) (:by |rJG4IHzWf) (:text |:counted) (:type :leaf)
                          |v $ {} (:at 1582911319891) (:by |rJG4IHzWf) (:text |inc) (:type :leaf)
                  |vr $ {} (:at 1583036795773) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1583036795773) (:by |rJG4IHzWf) (:text |:states) (:type :leaf)
                      |b $ {} (:at 1585489364274) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1585489365071) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
                          |j $ {} (:at 1585489370372) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |r $ {} (:at 1585489372825) (:by |rJG4IHzWf) (:text |op-data) (:type :leaf)
                  |w $ {} (:at 1580869104875) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1580869104875) (:by |rJG4IHzWf) (:text |:hydrate-storage) (:type :leaf)
                      |j $ {} (:at 1580869104875) (:by |rJG4IHzWf) (:text |op-data) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.updater) (:type :leaf)
            |r $ {} (:at 1585489354778) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1585489355581) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |j $ {} (:at 1585489357121) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1585489357121) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                    |j $ {} (:at 1585489357121) (:by |rJG4IHzWf) (:text |phlox.cursor) (:type :leaf)
                    |r $ {} (:at 1585489357121) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1585489357121) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1585489357121) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                        |j $ {} (:at 1585489357121) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
