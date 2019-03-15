[![Screenshot of Scene It Application](https://imgur.com/l2W5piy.png)](https://discocisco.github.io/scene-it)

# Scene It | MovieDb Web API

Scene It is a movie database website created by [@discocisco](https://github.com/discocisco) for an educational project. Anyone can view the website and read a collection of reviews made by people who have _hopefully_ seen the movie they are reviewing. After sign-in, users are able to create reviews of their own as well as store certain movies as a favorite of theirs. The back-end was developed using combination of Ruby, Rails, and PostgreSQL. The front-end was developed using React primarily with JavaScript and axios commands to communicate with the Scene It API and display changes to the web application in real-time for the viewer. While anyone is able to view movies and movie reviews, only signed-in users are able to create, update, or destroy their own review. Favorites can only be viewed, added, or removed by the signed-in user.

- [View the deployed API here!](https://sceneit-api.herokuapp.com)
- [View the deployed client here!](https://discocisco.github.io/scene-it)

## Setup and installation
1.  [Fork and clone](https://git.generalassemb.ly/ga-wdi-boston/meta/wiki/ForkAndClone) this repository
1.  Create a branch for edits (_suggested_)
1.  Install dependencies with `bundle install`.
1.  Create a `.env` for sensitive settings (`touch .env`).
1.  Generate new `development` and `test` secrets (`bundle exec rails secret`).
1.  Store them in `.env` with keys `SECRET_KEY_BASE_<DEVELOPMENT|TEST>` respectively.
1.  Run local host for viewing live-changes with `bin/rails server`.

## Technologies used

- Ruby
- Rails
- PostgreSQL
- SQL
- Git
- cURL
- client [(view the repo here.)](https://github.com/discocisco/scene-it)

## Routes

| Verb   | URI Pattern        | Request Body      | Headers   | Action              |
|--------|--------------------|-------------------|-----------|---------------------|
| POST   | `/sign-up`         | **credentials**   | N/A       | user sign-up        |
| POST   | `/sign-in`         | **credentials**   | N/A       | user sign-in        |
| DELETE | `/sign-out`        | N/A               | **Token** | user sign-out       |
| PATCH  | `/change-password` | **passwords**     | **Token** | change-password     |
|        |                    |                   |           |                     |
| GET    | `/movies`           | N/A               | N/A       | index movies         |
| GET    | `/movies/:id`      | N/A               | N/A | show movie/:id    |
| POST   | `find-theater`  | `search: <<string>>`  | N/A | Yelp search movie theaters by `location` |
|        |                    |                   |           |                     |
| GET    | `/reviews`        | N/A               | N/A | index reviews |
| GET    | `/reviews/:id`    | N/A               | N/A | show review   |
| POST   | `/reviews`        | `review: {}`     | **Token** | create review |
| PATCH  | `/reviews/:id`    | **review delta** | **Token** | update review |
| DELETE | `/reviews/:id`    | N/A               | **Token** | delete review |
|        |                    |                   |           |                     |
| GET    | `/favorites`        | N/A               | **Token** | index favorites |
| GET    | `/favorites/:id`    | N/A               | **Token** | show favorite   |
| POST   | `/favorites`        | `favorite: { movie_id: <<id>>}`     | **Token** | create favorite |
| PATCH  | `/favorites/:id`    | **favorite delta** | **Token** | update favorite |
| DELETE | `/favorites/:id`    | N/A               | **Token** | delete favorite |


## Development process and strategy

The focus of the back-end of this project was to handle all users, movies, reviews and favorites to be used by the client. Users were developed by GA to handle all proper authentification.
- Users were given an `email` to be used client-side for logging into the website or for displaying purposes. Each user could own multiple `reviews` or `favorites` that could be related or unrelated.
- Reviews were given a `text_body` and `movie_id` that would link to an existing movie that the user is wishing to create a review for.
- Favorites were given `movie_id` only.
- All movies and reviews could be viewed by any user, signed-in or not. Favorites can only be viewed by _the_ signed-in user.
- Ownership is required for any user to edit a specific resource.

## The future can be _scene_

- A new resource called `Profile` to house all user customization preferences and website themes.
- Successful calls to `TheMovieDb` API to populate movies table with list of their movies and additional information.
- Authorization handled by a third-party login (i.e. Facebook or Google)

### ERD

1. [ ] [Link to ERD (Entity relationship diagram).](https://imgur.com/a/QZadW5p)
