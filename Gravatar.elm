module Gravatar exposing (gravatarImg, getGravatarUrl)

{-| Returns URL or img DOM element for a given `email`,
uses `options` as query parameters with URL.
More about query parameters read at [Gravatar](https://en.gravatar.com/site/implement/images/)
website.

@docs gravatarImg
@docs getGravatarUrl

-}

import MD5 exposing (hex)
import Html exposing (Html, img)
import Html.Attributes exposing (src)


{-| Returns img DOM element which points to Gravatar for a given `email`
and using options as query parameters with URL

    gravatarImg "kuzzmi@example.com" "?s=200"
    -- returns image node with 200px x 200px image
    -- for "kuzzmi@example.com" email.

-}
gravatarImg : String -> String -> Html msg
gravatarImg email options =
    img [ src <| getGravatarUrl email options ] []


{-| Returns URL which points to Gravatar for a given `email`
and using options as query parameters with URL

    getGravatarUrl "kuzzmi@example.com" "?s=200"
    -- returns url to 200px x 200px image
    -- for "kuzzmi@example.com" email.

-}
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
