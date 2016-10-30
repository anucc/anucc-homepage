(defproject anucc "0.1.0"
  :description "ANU Creative Code group homepage"
  :url "https://anucc.github.io"
  :license {:name "Creative Commons Attribution-ShareAlike 4.0"
            :url "https://creativecommons.org/licenses/by-sa/4.0/"}
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [ring/ring-devel "1.5.0"]
                 [compojure "1.5.1"]
                 [ring-server "0.4.0"]
                 [cryogen-markdown "0.1.4"]
                 [cryogen-core "0.1.42"]]
  :plugins [[lein-ring "0.9.7"]]
  :main cryogen.core
  :ring {:init cryogen.server/init
         :handler cryogen.server/handler})
