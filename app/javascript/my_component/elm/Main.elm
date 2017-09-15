module Main exposing (main)

import Html exposing (Html, h1, text)
import Html.Attributes exposing (style)


-- MODEL


type alias Model =
    { name : String
    }


type alias Flags =
    { name : String
    }



-- INIT


init : Flags -> ( Model, Cmd Message )
init flags =
    ( { name = flags.name }, Cmd.none )



-- VIEW


view : Model -> Html Message
view model =
    h1 [ style [ ( "display", "flex" ), ( "justify-content", "center" ) ] ]
        [ text <| "Name '" ++ model.name ++ "' passed to Elm" ]



-- MESSAGE


type Message
    = None



-- UPDATE


update : Message -> Model -> ( Model, Cmd Message )
update message model =
    ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Message
subscriptions model =
    Sub.none



-- MAIN


main : Program Flags Model Message
main =
    Html.programWithFlags
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
