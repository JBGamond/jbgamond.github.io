port module Main exposing (..)

import Browser
import Experiences
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onMouseOut, onMouseOver)
import Html.Lazy exposing (lazy)
import Intro
import Skills


main =
    Browser.element { init = init, update = update, view = view, subscriptions = subscriptions }



-- MODEL

type alias Model =
    { skills : Skills.SkillList
    , experiences : Experiences.Experiences
    , highlighted : Maybe Experiences.Experience
    }


initModel : Model
initModel =
    { skills = Skills.initSkills
    , experiences = Experiences.experiences
    , highlighted = Nothing
    }


init : () -> ( Model, Cmd Msg )
init _ =
    ( initModel
    , Cmd.none
    )



-- UPDATE


type Msg
    = NoOp
    | HighlighExperience Experiences.Experience
    | RemoveHighlight


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        HighlighExperience exp ->
            ( { model | highlighted = Just exp }, Cmd.none )

        RemoveHighlight ->
            ( { model | highlighted = Nothing }, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div [ class "mainContainer" ]
        [ div
            [ class "sideContainer" ]
            [ section []
                [ Intro.intro ]
            , section
                []
                [ h3 [] [ text "Skills" ]
                , div [ class "skills" ]
                    (viewSkillList model.skills model.highlighted)
                ]
            ]
        , div [ class "separator" ] []
        , div
            [ class "sideContainer" ]
            [ h3 [] [ text "Experiences" ]
            , viewExperiences model.experiences
            ]
        ]


viewSkillList : Skills.SkillList -> Maybe Experiences.Experience -> List (Html Msg)
viewSkillList skills exp =
    List.map
        (\skill -> viewSkill skill exp)
        skills


viewSkill : String -> Maybe Experiences.Experience -> Html Msg
viewSkill skill exp =
    let
        highlightClass =
            case exp of
                Nothing ->
                    ""

                Just realExp ->
                    if List.any (\relatedExp -> relatedExp == skill) realExp.relatedSkills then
                        "highlightSkill"

                    else
                        ""
    in
    span [ class highlightClass ] [ text skill ]


viewExperiences : Experiences.Experiences -> Html Msg
viewExperiences model =
    ul
        [ class "experienceList" ]
        (List.map
            (\exp ->
                li
                    [ class "experience", onMouseOver (HighlighExperience exp), onMouseOut RemoveHighlight ]
                    [ h4 [] [ text exp.company, p [] [ text exp.dates ] ]
                    , p [] [ text exp.description ]
                    ]
            )
            model
        )
