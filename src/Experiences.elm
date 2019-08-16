module Experiences exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)

type alias Experiences =
    List Experience


type alias Experience =
    { company : String
    , dates : String
    , description : String
    , relatedSkills : List String
    }

experiences : Experiences
experiences =
    [ { company = "LivingObjects"
      , dates = "June 2017 - Now"
      , description = ""
      , relatedSkills = [ "Angular", "Javascript", "Redis", "Reactive Programing", "Python", "Jenkins", "Gitlab-CI", "Haproxy", "PHP", "Docker", "Symfony" ]
      }
    , { company = "GFI Informatique"
      , dates = "Sept. 2015 - May 2017"
      , description = ""
      , relatedSkills = [ "Javascript", "PHP", "Redis", "WebRTC", "Python", "Node.js" ]
      }
    , { company = "Alcatel-Lucent (apprenticeship)"
      , dates = "Sept. 2012 - Sept. 2015"
      , description = ""
      , relatedSkills = [ "Javascript", "PHP", "Python", "Jenkins" ]
      }
    ]