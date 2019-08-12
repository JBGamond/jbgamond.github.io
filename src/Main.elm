module Main exposing (Model, Msg(..), Skills, init, initSkills, main, update, view)

import Browser
import Html exposing (Html, button, div, text, span)


main =
    Browser.sandbox { init = init, update = update, view = view }

-- MODEL


type alias Skills =
    List String


type alias Model =
    { skills : Skills
    }


initSkills : Skills
initSkills =
    [ "Javascript"
    , "Angular"
    , "Reactive Programming"
    , "PHP"
    , "Python"
    , "Node.js"
    , "Jenkins"
    , "Docker"
    , "Gitlab-CI"
    , "Redis"
    , "Haproxy"
    ]


init : Model
init =
    { skills = initSkills
    }



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> Model
update msg model =
    case msg of
        NoOp ->
            model



-- VIEW


view : Model -> Html Msg
view model =
    div []
        (List.map
            (\skill -> span [] [ text skill ])
            model.skills
        )
