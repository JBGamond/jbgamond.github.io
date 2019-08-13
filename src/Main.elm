port module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Lazy exposing (lazy)
import Intro


main =
    Browser.element { init = init, update = update, view = view, subscriptions = subscriptions }



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


initModel : Model
initModel =
    { skills = initSkills
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( initModel
    , Cmd.none
    )



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ section []
            [ Intro.intro ]
        , section
            []
            (List.map
                (\skill -> span [] [ text skill ])
                model.skills
            )
        ]