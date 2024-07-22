(ns site.home
  (:require [smee]))


(defn index [request]
  [:h1 {:class "tc"}
   "Clojure web apps made easy"])
