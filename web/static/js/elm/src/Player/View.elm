module Player.View exposing (root)


import Html exposing (..)
import Html.Events exposing (..)

import Loop.Types
import Player.Types exposing (..)


root : Loop.Types.Model -> Html Msg
root loop =
  case loop.state of
    Loop.Types.Playing ->
      stopButton
    Loop.Types.NotPlaying ->
      playButton


playButton : Html Msg
playButton =
  button [ onClick Play ] [ text "Play" ]


stopButton : Html Msg
stopButton =
  button [ onClick Stop ] [ text "Stop" ]
