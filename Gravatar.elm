module Gravatar exposing (gravatar, getGravatarUrl)

import MD5 exposing (hex)
import Html exposing (Html, img)
import Html.Attributes exposing (src)


gravatar : String -> String -> Html msg
gravatar email options =
    img [ src <| getGravatarUrl email options ] []


getGravatarUrl : String -> String -> String
getGravatarUrl email options =
    let
        gravatarUrl =
            "https://www.gravatar.com/avatar/"

        gravatarHash =
            MD5.hex email

        gravatarOptions =
            options
    in
        gravatarUrl ++ gravatarHash ++ gravatarOptions
