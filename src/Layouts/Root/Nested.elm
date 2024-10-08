module Layouts.Root.Nested exposing (Model, Msg, Props, layout)

import Effect exposing (Effect)
import Html exposing (Html)
import Html.Attributes exposing (class)
import Layout exposing (Layout)
import Layouts.Root
import Route exposing (Route)
import Shared
import View exposing (View)


type alias Props =
    {}


layout : Props -> Shared.Model -> Route () -> Layout Layouts.Root.Props Model Msg contentMsg
layout props shared route =
    Layout.new
        { init = init
        , update = update
        , view = view
        , subscriptions = subscriptions
        }
        |> Layout.withParentProps {}



-- MODEL


type alias Model =
    {}


init : () -> ( Model, Effect Msg )
init _ =
    ( {}
    , Effect.none
    )



-- UPDATE


type Msg
    = ReplaceMe


update : Msg -> Model -> ( Model, Effect Msg )
update msg model =
    case msg of
        ReplaceMe ->
            ( model
            , Effect.none
            )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : { toContentMsg : Msg -> contentMsg, content : View contentMsg, model : Model } -> View contentMsg
view { toContentMsg, model, content } =
    { title = content.title
    , body =
        [ Html.text "Root.Nested"
        , Html.div [ class "page" ] content.body
        ]
    }
