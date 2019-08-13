module Intro exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


intro : Html msg
intro =
    div [ class "info" ]
        [ img
            [ src "pic.png", class "profilepic" ]
            []
        , div
            [ class "infotext"]
            [ h1
                []
                [ text "Jean-Baptiste Gamond" ]
            , h2
                []
                [ text "Software Engineer" ]
            , span
                []
                [ text "Hi, I'm a software engineer specialised in web technologies. I love solving problems, be it designing the artchitecture of a new web app, creating complex algorithms, fixing performance issues or working on user experience. I hate doing the same job everyday, so please don't ask me to do another sign up form! I love learning new stuff, so much that even this website is an excuse for trying out Elm." ]
            ]
        ]
