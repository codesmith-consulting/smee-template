(ns routes
  (:require [smee]
            [components]))

(def routes
  (smee/routes

    (smee/site
      (smee/with-layout components/layout
        [:get "/" :site.home/index]))

    (smee/api
      (smee/with-prefix "/api"
        [:get "/" :api.home/index]))))
