# Formspree Setup Instructions

To enable the contact form on your website, you need to set up Formspree:

## Steps:

1. **Create a Formspree Account**
   - Go to https://formspree.io/
   - Sign up for a free account (allows 50 submissions/month)

2. **Create a New Form**
   - Click "New Form"
   - Give it a name like "Boovan Contact Form"
   - Copy the form endpoint URL (looks like: `https://formspree.io/f/xyzabc123`)

3. **Update the Contact Page**
   - Open `/content/contact/_index.md`
   - Find the line: `<form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">`
   - Replace `YOUR_FORM_ID` with your actual form ID from step 2

4. **Test the Form**
   - After deploying your site, submit a test message
   - Check your Formspree dashboard to see the submission
   - Formspree will also email you when someone submits the form

## Alternative: Use a Different Form Service

If you prefer, you can use alternatives like:
- **Netlify Forms** (if hosting on Netlify)
- **Google Forms** (free, unlimited, but requires embedding)
- **EmailJS** (free tier available)

## Current Status

The contact form is set up with a placeholder. You need to replace `YOUR_FORM_ID` with your actual Formspree form ID.
