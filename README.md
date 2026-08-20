# WYC Documents

Official Washington Yacht Club governing documents (constitution, by-laws, policies, and code of conduct) stored as markdown and converted to PDF for public access.

## Deployment

Merges to `main` trigger a GitHub Actions workflow that builds PDFs and deploys them to GitHub Pages at [documents.washingtonyachtclub.org](https://documents.washingtonyachtclub.org).

The build uses [md-to-pdf](https://github.com/simonhaenisch/md-to-pdf/) — config and scripts are in `pdf-generator/`.

## Making Changes

1. Create a branch named `changes/YYYY-MM-DD` with the date of the meeting where the changes were voted on.
2. Open a PR into `main` and squash merge it. Title the squash commit with the meeting date so the history reads as a changelog of general meetings.
3. PDFs rebuild and deploy automatically on merge.

## Conventions and Best Practices

- Use internal links for references within the same document.
- Use the full PDF URL and heading anchor to link to a section in another document.
  - The other document must contain an internal link to that heading. Otherwise, the PDF generator will not create the destination.
- Refer to document sections by their linked heading titles, not by article or section numbers that may change.
