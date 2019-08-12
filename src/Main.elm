import Browser
import Html exposing (Html, button, div, text)

main = Browser.sandbox { init = init, update= update, view = view }

-- MODEL

type alias Model = Int

init : Model

init = 0

-- UPDATE

type Msg = Increment

update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

-- VIEW

view: Model -> Html Msg
view model =
    div []
        [ button [] [ text "TOTO "]
        ]

