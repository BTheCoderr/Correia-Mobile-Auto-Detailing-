# Correia Mobile Detailing

Single-page website for Correia Mobile Detailing — mobile auto detailing in Providence, RI and nearby areas.

## Deploy on Netlify

1. Push this repo to GitHub (already set up if you cloned from the remote).
2. Log in to [Netlify](https://app.netlify.com).
3. Click **Add new site** → **Import an existing project**.
4. Connect GitHub and select this repository.
5. Build settings:
   - **Build command:** leave empty
   - **Publish directory:** `.` (root)
6. Click **Deploy site**.

No build step is required — the site is plain HTML, CSS, and JavaScript.

## Local preview

Open `index.html` in a browser, or run a simple server:

```bash
python3 -m http.server 8080
```

Then visit `http://localhost:8080`.

## Updating photos

Search the HTML for comments marked with photo swap instructions. Replace the CSS hero visual with real before/after photos when available.

## Contact

- Phone/Text: (401) 771-2129
- Facebook: [Correia Mobile Auto Detailing](https://www.facebook.com/p/Correia-Mobile-Auto-Detailing-61551652695336/)
