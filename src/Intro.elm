module Intro exposing (..)

import Html exposing (..)



-- MODEL


type alias Model =
    {}



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
        [ h1
            []
            [ text "Jean-Baptiste Gamond" ]
        , h2
            []
            [ text "Software Engineer" ]
        , span
            []
            [ text "Hi, I'm a software engineer specialised in web technologies. I love solving problems, be it designing the artchitecture of a new web app, creating complex algorithms, fixing performance issues or working on user experience. I hate doing the same job everyday, so please don't ask me to do another sign up form! I love learning new stuff, so much that even this website is an excuse for trying out Elm" ]
        ]
