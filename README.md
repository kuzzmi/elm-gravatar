# elm-gravatar

Get Gravatar image source URL or DOM image element.

Returns URL or img DOM element for a given `email`, uses `options` as query parameters with URL.
More about query parameters read at [Gravatar](https://en.gravatar.com/site/implement/images/) website.

## Examples

```elm
 gravatarImg "kuzzmi@example.com" "?s=200"
 -- returns image node with 200px x 200px image
 -- for "kuzzmi@example.com" email.

 getGravatarUrl "kuzzmi@example.com" "?s=200"
 -- returns url to 200px x 200px image
 -- for "kuzzmi@example.com" email.
```
