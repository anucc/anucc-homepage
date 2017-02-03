# ANU Creative Code group homepage

## Writing

For most user's, the all content should go in the `posts` directory.
This is used for both "projects" and "posts". (It's confusing, I know).

### Front Matter

Posts must begin with an edn structure which should include the following keys.

```
{:title "My post or project"
 :layout :post
 :tags  []
 :author "Jane Citizen"
 :thumbnail "images/example.jpg"
 :collection "projects"
}
```

The collection key is particularly important to ensure your post shows up in the right place. Currently, this should only be `"projects"` or `"posts"`.

## Development

```
lein ring server
```

To add new posts, put an appropriately-formatted markdown file in `resources/templates/md/posts`

## Deployment

```
make init # if you've never built the website before
make # generates html, pushes to https://github.com/anucc/anucc.github.io
```

## Help

For more info, email ben.swift@anu.edu.au
