# Contact Form Testing Guide

## 🎯 Current Status

The contact form is **ready to use** but needs a form service configured.

**Current Form Location:** http://localhost:28080/contact/

**Form Action:** `https://formspree.io/f/YOUR_FORM_ID` (needs replacement)

---

## 📋 What the Form Collects

When someone submits the form, it sends:
- **Name** (required)
- **Email** (required)
- **Phone** (optional)
- **Service of Interest** (required) - dropdown with options:
  - Band Performance
  - Sound Equipment Rental
  - DJ & Sound Services
  - Song Production
  - Other / General Inquiry
- **Event Date** (optional)
- **Message** (required)

---

## 🧪 Testing Option 1: Formspree (RECOMMENDED)

### Setup Steps:

1. **Create Formspree Account**
   ```
   Go to: https://formspree.io/
   Click: "Get Started" or "Sign Up"
   Use: Your email address
   ```

2. **Create New Form**
   ```
   Click: "+ New Form" button
   Name: "Boovan Contact Form"
   Click: "Create Form"
   ```

3. **Get Your Form ID**
   ```
   After creation, you'll see your form endpoint:
   https://formspree.io/f/YOUR_FORM_ID
   
   Copy the ID part (example: xyzabc123)
   ```

4. **Update the Website**
   ```bash
   # Edit the contact page
   nano content/contact/_index.md
   
   # Find line 17:
   <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
   
   # Replace YOUR_FORM_ID with your actual ID:
   <form action="https://formspree.io/f/xyzabc123" method="POST">
   
   # Save and rebuild
   make deploy
   ```

5. **Test the Form**
   ```
   - Go to: http://localhost:28080/contact/
   - Fill out all required fields
   - Click "Send Message"
   - You'll be redirected to Formspree confirmation
   - Check your email for the submission
   ```

### Formspree Features:
- ✅ 50 free submissions/month
- ✅ Email notifications
- ✅ Spam protection
- ✅ Dashboard to view all submissions
- ✅ No coding required

---

## 🧪 Testing Option 2: FormSubmit (Quick Test)

**No signup required!** Sends directly to your email.

### Setup Steps:

1. **Update Form Action**
   ```bash
   # Edit contact page
   nano content/contact/_index.md
   
   # Change line 17 to:
   <form action="https://formsubmit.co/your-email@example.com" method="POST">
   
   # Replace with YOUR actual email
   ```

2. **Add Extra Features (Optional)**
   ```html
   <!-- Add these hidden fields inside the form -->
   <input type="hidden" name="_subject" value="New Boovan Contact Form Submission">
   <input type="hidden" name="_captcha" value="false">
   <input type="text" name="_honey" style="display:none">
   ```

3. **Rebuild and Test**
   ```bash
   make deploy
   ```

4. **First Submission**
   - Fill out the form
   - Submit
   - Check your email for confirmation link
   - Click the link to activate

### FormSubmit Features:
- ✅ Unlimited submissions (free)
- ✅ No signup required
- ✅ Spam protection available
- ❌ No dashboard
- ❌ Less features than Formspree

---

## 🧪 Testing Option 3: Local Test (See Form Data)

Want to see what data is sent without setting up a service?

### Quick Browser Test:

1. **Open Developer Tools**
   ```
   In your browser:
   - Chrome/Firefox: Press F12
   - Go to "Network" tab
   ```

2. **Fill Out Form**
   ```
   - Fill all fields with test data
   - Keep Developer Tools open
   ```

3. **Click Submit**
   ```
   - Form will try to submit
   - In Network tab, you'll see the POST request
   - Click it to see all the data being sent
   ```

### Create a Test Endpoint:

I can create a simple local test server that shows you form submissions:

```bash
# Create test server
python3 -m http.server 8888 &

# Then update form to:
<form action="http://localhost:8888" method="POST">

# Submissions will show in the terminal
```

---

## 📊 Comparison Table

| Feature | Formspree | FormSubmit | Local Test |
|---------|-----------|------------|------------|
| Email Notifications | ✅ | ✅ | ❌ |
| Signup Required | ✅ | ❌ | ❌ |
| Dashboard | ✅ | ❌ | ❌ |
| Spam Protection | ✅ | ✅ | ❌ |
| Free Tier Limit | 50/month | Unlimited | N/A |
| Best For | Production | Quick test | Development |

---

## 🎯 Recommended Testing Flow

### Step 1: Quick Test (5 minutes)
Use FormSubmit to test immediately:
1. Replace form action with your email
2. Rebuild site
3. Submit test form
4. Verify email arrives

### Step 2: Production Setup (10 minutes)
Switch to Formspree:
1. Create Formspree account
2. Get form ID
3. Update contact page
4. Test again

### Step 3: Verify Everything Works
Test checklist:
- [ ] Form displays correctly
- [ ] All fields work
- [ ] Required validation works
- [ ] Email arrives within 1 minute
- [ ] Email contains all form data
- [ ] Form shows success message

---

## 🐛 Troubleshooting

### Form doesn't submit
- Check browser console for errors (F12)
- Verify form action URL is correct
- Check internet connection

### Email doesn't arrive
- Check spam folder
- Verify email address is correct
- For Formspree: Check dashboard
- For FormSubmit: Verify you clicked activation link

### Form submits but shows error
- Formspree: First submission needs activation
- FormSubmit: Click confirmation email
- Check form service status page

---

## 📝 Current Form Configuration

**File Location:** `content/contact/_index.md`

**Form Action (Line 17):** `https://formspree.io/f/YOUR_FORM_ID`

**To Update:**
```bash
cd /path/to/boovan.org
nano content/contact/_index.md
# Edit line 17
make deploy
```

---

## 🚀 Next Steps

1. **Choose your testing method** (Formspree recommended)
2. **Update the form action** in `content/contact/_index.md`
3. **Rebuild the site** with `make deploy`
4. **Test the form** at http://localhost:28080/contact/
5. **Verify email receipt**

Need help with any step? Just ask!
