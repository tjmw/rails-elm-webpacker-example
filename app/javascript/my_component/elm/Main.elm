port module Main exposing (main)

import Html exposing (Html, button, div, h1, text)
import Html.Events exposing (onClick)


-- PORTS


port somethingHappened : () -> Cmd msg



-- MODEL


type alias Model =
    { name : String
    , apiRoot : String
    }


type alias Flags =
    { name : String
    , api_root : String
    }



-- INIT


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( { name = flags.name
      , apiRoot = flags.api_root
      }
    , Cmd.none
    )



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ h1 [] [ text <| "Name '" ++ model.name ++ "' passed to Elm" ]
        , button [ onClick ButtonClicked ] [ text "Click me" ]
        ]



-- MSG


type Msg
    = ButtonClicked
    | None



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ButtonClicked ->
            ( model, somethingHappened () )

        _ ->
            ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- MAIN


main : Program Flags Model Msg
main =
    Html.programWithFlags
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
