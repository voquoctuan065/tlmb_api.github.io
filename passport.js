import passport from "passport";
import { Strategy as GoogleStrategy } from "passport-google-oauth20";
import { Strategy as FacebookStrategy } from "passport-facebook";

const GOOGLE_CLIENT_ID =
  "58467599445-d44eg2vaug0tlhda9f5cdfk2h3je1epn.apps.googleusercontent.com";
const GOOGLE_CLIENT_SECRET = "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";

const FACEBOOK_APP_ID = "922666612159295";
const FACEBOOK_APP_SECRET = "0d34541ace9136c23c28199c0634e4f8";

passport.use(
  new GoogleStrategy(
    {
      clientID: GOOGLE_CLIENT_ID,
      clientSecret: GOOGLE_CLIENT_SECRET,
      callbackURL: "/api/auth/google/callback",
    },
    function (accessToken, refreshToken, profile, done) {
      done(null, profile);
    }
  )
);

passport.use(
  new FacebookStrategy(
    {
      clientID: FACEBOOK_APP_ID,
      clientSecret: FACEBOOK_APP_SECRET,
      callbackURL: "/api/auth/google/callback",
    },
    function (accessToken, refreshToken, profile, done) {
      done(null, profile);
    }
  )
);

passport.serializeUser((user, done) => {
  done(null, user);
});

passport.deserializeUser((user, done) => {
  done(null, user);
});
