---
title: "Contact The Boovan"
description: "Get in touch with The Boovan for bookings, inquiries, and collaborations"
showTableOfContents: false
---

{{< lead >}}
We'd love to hear from you! Whether you're interested in booking us for an event, renting equipment, or just want to say hello, reach out to us.
{{< /lead >}}

## Service Booking & Inquiries

Fill out the form below and we'll get back to you within 1-2 business days. Select your services to see estimated pricing.

<form id="booking-form" action="https://formspree.io/f/mykzgodb" method="POST">
<div class="bf-form-group">
<label class="bf-label">Name *</label>
<input type="text" name="name" required class="bf-input">
</div>
<div class="bf-form-group">
<label class="bf-label">Email *</label>
<input type="email" name="email" required class="bf-input">
</div>
<div class="bf-form-group">
<label class="bf-label">Phone</label>
<input type="tel" name="phone" class="bf-input">
</div>
<div class="bf-form-group">
<label class="bf-label">Event Date (if applicable)</label>
<input type="date" name="event-date" class="bf-input">
</div>

<div class="bf-form-group">
<label class="bf-label">Message *</label>
<textarea name="message" rows="5" required class="bf-input" placeholder="Tell us about your event, needs, or inquiry..."></textarea>
</div>
<div>
<button type="submit" class="bf-submit">Send Inquiry</button>
</div>
<div id="form-message" class="bf-msg" style="display:none;"></div>
</form>

<style>
  .bf-form-group { margin-bottom: 1rem; }
  .bf-label { display: block; font-size: 0.875rem; font-weight: 500; margin-bottom: 0.4rem; }
  .bf-input {
    width: 100%;
    padding: 0.5rem 1rem;
    border: 1px solid rgba(var(--color-neutral-600), 1);
    border-radius: 0.5rem;
    background: rgba(var(--color-neutral-800), 1);
    color: rgba(var(--color-neutral-100), 1);
  }
  .bf-input:focus {
    outline: none;
    border-color: rgba(var(--color-primary-500), 1);
    box-shadow: 0 0 0 2px rgba(var(--color-primary-500), 0.3);
  }
  .bf-submit {
    padding: 0.75rem 1.5rem;
    background: rgba(var(--color-primary-500), 1);
    color: white;
    font-weight: 600;
    border-radius: 0.5rem;
    border: none;
    cursor: pointer;
    transition: background 0.2s;
  }
  .bf-submit:hover { background: rgba(var(--color-primary-600), 1); }
  .bf-submit:disabled { opacity: 0.6; cursor: not-allowed; }
  .bf-msg { padding: 1rem; border-radius: 0.5rem; margin-top: 1rem; font-weight: 500; }
  .bf-msg-success { background: rgba(34,197,94,0.15); color: #4ade80; border: 1px solid rgba(34,197,94,0.3); }
  .bf-msg-error { background: rgba(239,68,68,0.15); color: #f87171; border: 1px solid rgba(239,68,68,0.3); }
</style>

<script>
(function() {
  document.getElementById('booking-form').addEventListener('submit', function(e) {
    e.preventDefault();
    var form = this;
    var submitBtn = form.querySelector('.bf-submit');
    var msgDiv = document.getElementById('form-message');
    submitBtn.disabled = true;
    submitBtn.textContent = 'Sending...';
    msgDiv.style.display = 'none';

    fetch(form.action, {
      method: 'POST',
      body: new FormData(form),
      headers: { 'Accept': 'application/json' }
    }).then(function(response) {
      if (response.ok) {
        msgDiv.className = 'bf-msg bf-msg-success';
        msgDiv.textContent = 'Thank you! Your inquiry has been sent. We\'ll get back to you within 1-2 business days.';
        msgDiv.style.display = 'block';
        form.reset();
      } else {
        msgDiv.className = 'bf-msg bf-msg-error';
        msgDiv.textContent = 'Something went wrong. Please try again or email us directly at info@boovan.org.';
        msgDiv.style.display = 'block';
      }
    }).catch(function() {
      msgDiv.className = 'bf-msg bf-msg-error';
      msgDiv.textContent = 'Something went wrong. Please try again or email us directly at info@boovan.org.';
      msgDiv.style.display = 'block';
    }).finally(function() {
      submitBtn.disabled = false;
      submitBtn.textContent = 'Send Inquiry';
    });
  });
})();
</script>

---

## Other Ways to Reach Us

{{< alert "envelope" >}}
**Email Us Directly**: [info@boovan.org](mailto:info@boovan.org) — We'd love to hear from you!
{{< /alert >}}

{{< alert "circle-info" >}}
**Response Time**: We typically respond within 1-2 business days. For urgent inquiries, please mention "urgent" in your message subject.
{{< /alert >}}

{{< alert "calendar" >}}
**Booking Lead Time**: For events, we recommend reaching out at least 4-6 weeks in advance when possible, though we'll do our best to accommodate shorter timelines.
{{< /alert >}}

---

## Frequently Asked Questions

**Q: What areas do you serve?**
A: We're based in North Texas and primarily serve the DFW metroplex and surrounding areas. For events outside this area, please contact us to discuss.

**Q: Do you travel for events?**
A: Yes! We can travel for events. Travel fees may apply for locations outside our primary service area.

**Q: What's your cancellation policy?**
A: We understand that plans change. Please contact us as soon as possible if you need to reschedule or cancel. We'll work with you to find a solution.

**Q: Can you play specific songs or genres?**
A: Absolutely! We love taking requests. Let us know your preferences and we'll do our best to accommodate.

**Q: Are you available for rehearsals or consultations?**
A: Yes, we can schedule meetings to discuss your event needs and even do a preview performance if needed.

---

{{< button href="/about/" target="_self" >}}
Learn More About Us
{{< /button >}}
