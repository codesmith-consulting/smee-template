(ns server
  (:require [smee]
            [routes])
  (:gen-class))

(def app (smee/app {:routes routes/routes}))

(defn -main [& [port]]
  (smee/server app {:port port}))

(comment
  (-main))
