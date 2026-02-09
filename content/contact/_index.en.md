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
<input type="hidden" name="selected-services" id="selected-services-input">
<input type="hidden" name="estimated-total" id="estimated-total-input">
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
<label class="bf-label">Service Category *</label>
<select id="service-category" name="service-category" required class="bf-input">
<option value="">Please select a service...</option>
<option value="live-band">Live Band Performance</option>
<option value="audio-services">Sound Services (delivered &amp; setup)</option>
<option value="pa-rental">PA Rental (customer pickup)</option>
<option value="bundles">🎉 Bundle Packages — Save More!</option>
<option value="other">Other / General Inquiry</option>
</select>
</div>
<div id="panel-live-band" class="bf-panel" style="display:none;">
<div class="bf-panel-header">Live Band Performance</div>
<div class="bf-option-group">
<label class="bf-option"><input type="radio" name="band-package" value="1set"> 1 set (1 hr) — $300</label>
<label class="bf-option"><input type="radio" name="band-package" value="2sets"> 2 sets (2 hr) — $500</label>
<label class="bf-option"><input type="radio" name="band-package" value="3sets"> 3 sets (3 hr) — $800</label>
</div>
<div class="bf-extra">
<label class="bf-label">Extra hours (+$200/hr)</label>
<input type="number" id="band-extra-hours" min="0" max="10" value="0" class="bf-input-sm">
</div>
<div class="bf-addon-group">
<p class="bf-note" style="font-style:normal; color:rgba(var(--color-primary-300),1);">⚠ Band performance does not include PA or sound services. If the venue does not provide these, please add them below:</p>
<label class="bf-option"><input type="checkbox" name="band-audio" value="pa-basic"> Add: PA + mics + setup/teardown — +$200</label>
<label class="bf-option"><input type="checkbox" name="band-audio" value="sound-engineer"> Add: Sound engineer — +$40/hr</label>
<div class="bf-extra" id="band-engineer-hours-wrap" style="display:none;margin-left:1.5rem;">
<label class="bf-label">Sound engineer hours</label>
<input type="number" id="band-engineer-hours" min="1" max="20" value="1" class="bf-input-sm">
</div>
<label class="bf-option"><input type="checkbox" name="band-audio" value="music-playback"> Add: Music playback during breaks — +$50</label>
<label class="bf-option"><input type="checkbox" name="band-audio" value="mc"> Add: MC/announcements — +$50</label>
</div>
</div>
<div id="panel-audio-services" class="bf-panel" style="display:none;">
<div class="bf-panel-header">Sound Services</div>
<div class="bf-option-group">
<label class="bf-option"><input type="radio" name="audio-base" value="pa-basic"> PA + mics + setup/teardown — $200</label>
<label class="bf-option"><input type="checkbox" name="audio-addon" value="sound-engineer"> Add: Sound engineer — +$40/hr</label>
<div class="bf-extra" id="audio-engineer-hours-wrap" style="display:none;margin-left:1.5rem;">
<label class="bf-label">Sound engineer hours</label>
<input type="number" id="audio-engineer-hours" min="1" max="20" value="1" class="bf-input-sm">
</div>
</div>
<div class="bf-addon-group">
<label class="bf-option"><input type="checkbox" name="audio-addon" value="music-playback"> Add: Music playback during breaks — +$50</label>
<label class="bf-option"><input type="checkbox" name="audio-addon" value="mc"> Add: MC/announcements — +$50</label>
</div>
</div>
<div id="panel-pa-rental" class="bf-panel" style="display:none;">
<div class="bf-panel-header">PA Rental (customer pickup)</div>
<div class="bf-option-group">
<label class="bf-option"><input type="radio" name="pa-package" value="basic"> Basic (speakers + cables) — $75/day (deposit: $200)</label>
<label class="bf-option"><input type="radio" name="pa-package" value="full"> Full (speakers + XR18 mixer + mics) — $125/day (deposit: $350)</label>
</div>
<div class="bf-extra">
<label class="bf-label">Number of rental days</label>
<input type="number" id="pa-days" min="1" max="30" value="1" class="bf-input-sm">
</div>
<p class="bf-note">Deposit refunded upon return in good condition.</p>
</div>
<div id="panel-bundles" class="bf-panel" style="display:none;">
<div class="bf-panel-header">🎉 Bundle Packages — Save More!</div>
<div class="bf-option-group">
<label class="bf-option"><input type="radio" name="bundle-package" value="full-event"> 🎸 Full Event — 1-set band (1 hr) + PA + sound engineer + music between sets (4 hrs total) — <s>$710</s> <strong>$600</strong></label>
<label class="bf-option"><input type="radio" name="bundle-package" value="audio-only"> 🎧 Sound Only — PA + sound engineer + music playback (4 hrs) — <s>$410</s> <strong>$300</strong></label>
</div>
</div>
<div id="panel-other" class="bf-panel" style="display:none;">
<p class="bf-note">Please describe your needs in the message below.</p>
</div>
<div id="addons-section" class="bf-panel" style="display:none;">
<div class="bf-panel-header">Additional Services</div>
<p class="bf-subheader">Recording Services</p>
<label class="bf-option"><input type="checkbox" name="recording" value="stereo"> Live stereo recording — +$100</label>
<label class="bf-option"><input type="checkbox" name="recording" value="multitrack"> Multitrack recording — +$200</label>
<label class="bf-option"><input type="checkbox" name="recording" value="mixmaster"> Post-event mix/master — +$150</label>
<p class="bf-subheader">Additional Fees</p>
<div class="bf-extra">
<label class="bf-label">Travel beyond 30 miles ($1/mile)</label>
<input type="number" id="travel-miles" min="0" max="500" value="0" class="bf-input-sm">
</div>
<div class="bf-extra">
<label class="bf-label">Extra microphone rental ($15 each)</label>
<input type="number" id="extra-mics" min="0" max="20" value="0" class="bf-input-sm">
</div>
</div>
<div id="price-summary" style="display:none;">
<div class="bf-summary-header">Estimated Price</div>
<div id="price-line-items"></div>
<div class="bf-summary-total">Estimated Total: <span id="price-total">$0</span></div>
<p class="bf-disclaimer">* This is an estimate. Final pricing may vary based on your specific needs.</p>
</div>
<div class="bf-form-group">
<label class="bf-label">Message *</label>
<textarea name="message" rows="5" required class="bf-input" placeholder="Tell us about your event, needs, or inquiry..."></textarea>
</div>
<div>
<button type="submit" class="bf-submit">Send Booking Request</button>
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
  .bf-input-sm {
    width: 6rem;
    padding: 0.4rem 0.75rem;
    border: 1px solid rgba(var(--color-neutral-600), 1);
    border-radius: 0.375rem;
    background: rgba(var(--color-neutral-800), 1);
    color: rgba(var(--color-neutral-100), 1);
  }
  .bf-input-sm:focus {
    outline: none;
    border-color: rgba(var(--color-primary-500), 1);
    box-shadow: 0 0 0 2px rgba(var(--color-primary-500), 0.3);
  }
  .bf-panel {
    border: 1px solid rgba(var(--color-neutral-600), 1);
    border-radius: 0.5rem;
    padding: 1rem;
    margin-bottom: 1rem;
    background: rgba(var(--color-neutral-800), 0.5);
  }
  .bf-panel-header {
    font-size: 1.1rem;
    font-weight: 600;
    margin-bottom: 0.75rem;
    color: rgba(var(--color-primary-400), 1);
  }
  .bf-subheader {
    font-weight: 600;
    margin: 0.75rem 0 0.25rem 0;
    color: rgba(var(--color-neutral-300), 1);
  }
  .bf-option {
    display: flex;
    align-items: flex-start;
    gap: 0.5rem;
    padding: 0.4rem 0;
    cursor: pointer;
  }
  .bf-option:hover { color: rgba(var(--color-primary-300), 1); }
  .bf-option input[type="radio"],
  .bf-option input[type="checkbox"] {
    margin-top: 0.2rem;
    flex-shrink: 0;
    accent-color: rgba(var(--color-primary-500), 1);
  }
  .bf-option-group { margin-bottom: 0.5rem; }
  .bf-addon-group { margin-top: 0.5rem; padding-top: 0.5rem; border-top: 1px solid rgba(var(--color-neutral-700), 1); }
  .bf-extra { margin-top: 0.5rem; }
  .bf-note { font-size: 0.85rem; color: rgba(var(--color-neutral-400), 1); font-style: italic; margin-top: 0.5rem; }
  .bf-disclaimer { font-size: 0.8rem; color: rgba(var(--color-neutral-500), 1); font-style: italic; margin-top: 0.75rem; }
  #price-summary {
    border: 2px solid rgba(var(--color-primary-500), 1);
    border-radius: 0.5rem;
    padding: 1rem;
    margin: 1.5rem 0;
    background: rgba(var(--color-primary-900), 0.3);
  }
  .bf-summary-header {
    font-size: 1.25rem;
    font-weight: 700;
    color: rgba(var(--color-primary-400), 1);
    margin-bottom: 0.75rem;
  }
  .bf-price-line {
    display: flex;
    justify-content: space-between;
    padding: 0.2rem 0;
  }
  .bf-price-line-label { color: rgba(var(--color-neutral-300), 1); }
  .bf-price-line-amount { color: rgba(var(--color-neutral-100), 1); font-weight: 500; }
  .bf-summary-total {
    font-size: 1.35rem;
    font-weight: 700;
    color: rgba(var(--color-primary-300), 1);
    margin-top: 0.75rem;
    padding-top: 0.75rem;
    border-top: 1px solid rgba(var(--color-neutral-600), 1);
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
  var PRICING = {
    band: { '1set': 300, '2sets': 500, '3sets': 800 },
    bandExtra: 200,
    bandAudio: { 'pa-basic': 200, 'music-playback': 50, 'mc': 50 },
    soundEngineerPerHour: 40,
    audio: { 'pa-basic': 200 },
    audioAddon: { 'music-playback': 50, 'mc': 50 },
    paRental: { 'basic': 75, 'full': 125 },
    bundles: { 'full-event': 600, 'audio-only': 300 },
    recording: { 'stereo': 100, 'multitrack': 200, 'mixmaster': 150 },
    travelPerMile: 1,
    extraMicEach: 15
  };

  var LABELS = {
    band: { '1set': '1 set live band performance (1 hr)', '2sets': '2 sets live band performance (2 hr)', '3sets': '3 sets live band performance (3 hr)' },
    bandAudio: { 'pa-basic': 'PA + mics + setup/teardown', 'music-playback': 'Music playback during breaks', 'mc': 'MC/announcements' },
    audio: { 'pa-basic': 'PA + mics + setup/teardown' },
    audioAddon: { 'music-playback': 'Music playback during breaks', 'mc': 'MC/announcements' },
    paRental: { 'basic': 'Basic PA rental', 'full': 'Full PA rental' },
    bundles: { 'full-event': 'Full Event bundle', 'audio-only': 'Sound Only bundle' },
    recording: { 'stereo': 'Live stereo recording', 'multitrack': 'Multitrack recording', 'mixmaster': 'Post-event mix/master' }
  };

  var categorySelect = document.getElementById('service-category');
  var panels = ['live-band', 'audio-services', 'pa-rental', 'bundles', 'other'];
  var addonsSection = document.getElementById('addons-section');
  var priceSummary = document.getElementById('price-summary');
  var priceLineItems = document.getElementById('price-line-items');
  var priceTotal = document.getElementById('price-total');

  function showPanel(id) {
    panels.forEach(function(p) {
      var el = document.getElementById('panel-' + p);
      if (el) el.style.display = (p === id) ? 'block' : 'none';
    });
  }

  function resetSelections() {
    var form = document.getElementById('booking-form');
    form.querySelectorAll('.bf-panel input[type="radio"]').forEach(function(r) { r.checked = false; });
    form.querySelectorAll('.bf-panel input[type="checkbox"]').forEach(function(c) { c.checked = false; });
    form.querySelectorAll('.bf-panel input[type="number"]').forEach(function(n) { n.value = n.id === 'pa-days' ? '1' : '0'; });
  }

  function getRadioValue(name) {
    var el = document.querySelector('input[name="' + name + '"]:checked');
    return el ? el.value : null;
  }

  function getCheckedValues(name) {
    var vals = [];
    document.querySelectorAll('input[name="' + name + '"]:checked').forEach(function(el) { vals.push(el.value); });
    return vals;
  }

  function getNumValue(id) {
    var el = document.getElementById(id);
    return el ? (parseInt(el.value, 10) || 0) : 0;
  }

  function recalculate() {
    var cat = categorySelect.value;
    var items = [];
    var total = 0;

    if (cat === 'live-band') {
      var pkg = getRadioValue('band-package');
      if (pkg && PRICING.band[pkg]) {
        items.push({ label: LABELS.band[pkg], amount: PRICING.band[pkg] });
        total += PRICING.band[pkg];
      }
      var extra = getNumValue('band-extra-hours');
      if (extra > 0) {
        var cost = extra * PRICING.bandExtra;
        items.push({ label: 'Extra hours x' + extra, amount: cost });
        total += cost;
      }
      getCheckedValues('band-audio').forEach(function(a) {
        if (a === 'sound-engineer') {
          var hrs = getNumValue('band-engineer-hours');
          if (hrs < 1) hrs = 1;
          var cost = hrs * PRICING.soundEngineerPerHour;
          items.push({ label: 'Sound engineer x' + hrs + ' hr' + (hrs > 1 ? 's' : ''), amount: cost });
          total += cost;
        } else if (PRICING.bandAudio[a]) {
          items.push({ label: LABELS.bandAudio[a], amount: PRICING.bandAudio[a] });
          total += PRICING.bandAudio[a];
        }
      });
    } else if (cat === 'audio-services') {
      var base = getRadioValue('audio-base');
      if (base && PRICING.audio[base]) {
        items.push({ label: LABELS.audio[base], amount: PRICING.audio[base] });
        total += PRICING.audio[base];
      }
      getCheckedValues('audio-addon').forEach(function(a) {
        if (a === 'sound-engineer') {
          var hrs = getNumValue('audio-engineer-hours');
          if (hrs < 1) hrs = 1;
          var cost = hrs * PRICING.soundEngineerPerHour;
          items.push({ label: 'Sound engineer x' + hrs + ' hr' + (hrs > 1 ? 's' : ''), amount: cost });
          total += cost;
        } else if (PRICING.audioAddon[a]) {
          items.push({ label: LABELS.audioAddon[a], amount: PRICING.audioAddon[a] });
          total += PRICING.audioAddon[a];
        }
      });
    } else if (cat === 'pa-rental') {
      var pa = getRadioValue('pa-package');
      var days = getNumValue('pa-days');
      if (days < 1) days = 1;
      if (pa && PRICING.paRental[pa]) {
        var dayCost = PRICING.paRental[pa] * days;
        items.push({ label: LABELS.paRental[pa] + ' x' + days + ' day' + (days > 1 ? 's' : ''), amount: dayCost });
        total += dayCost;
      }
    } else if (cat === 'bundles') {
      var bun = getRadioValue('bundle-package');
      if (bun && PRICING.bundles[bun]) {
        items.push({ label: LABELS.bundles[bun], amount: PRICING.bundles[bun] });
        total += PRICING.bundles[bun];
      }
    }

    if (cat && cat !== 'other') {
      getCheckedValues('recording').forEach(function(r) {
        if (PRICING.recording[r]) {
          items.push({ label: LABELS.recording[r], amount: PRICING.recording[r] });
          total += PRICING.recording[r];
        }
      });
      var miles = getNumValue('travel-miles');
      if (miles > 0) {
        items.push({ label: 'Travel: ' + miles + ' miles', amount: miles * PRICING.travelPerMile });
        total += miles * PRICING.travelPerMile;
      }
      var mics = getNumValue('extra-mics');
      if (mics > 0) {
        items.push({ label: 'Extra mics x' + mics, amount: mics * PRICING.extraMicEach });
        total += mics * PRICING.extraMicEach;
      }
    }

    if (items.length > 0) {
      var html = '';
      items.forEach(function(item) {
        html += '<div class="bf-price-line"><span class="bf-price-line-label">' + item.label + '</span><span class="bf-price-line-amount">$' + item.amount + '</span></div>';
      });
      priceLineItems.innerHTML = html;
      priceTotal.textContent = '$' + total;
      priceSummary.style.display = 'block';
    } else {
      priceSummary.style.display = 'none';
    }
  }

  categorySelect.addEventListener('change', function() {
    resetSelections();
    showPanel(this.value);
    addonsSection.style.display = (this.value && this.value !== 'other') ? 'block' : 'none';
    recalculate();
  });

  document.querySelectorAll('.bf-panel input').forEach(function(el) {
    el.addEventListener('change', recalculate);
    el.addEventListener('input', recalculate);
  });

  // Show/hide sound engineer hours inputs
  document.querySelectorAll('input[value="sound-engineer"]').forEach(function(cb) {
    cb.addEventListener('change', function() {
      var wrap = this.closest('.bf-panel').querySelector('[id$="engineer-hours-wrap"]');
      if (wrap) wrap.style.display = this.checked ? 'block' : 'none';
      recalculate();
    });
  });
  ['band-engineer-hours', 'audio-engineer-hours'].forEach(function(id) {
    var el = document.getElementById(id);
    if (el) {
      el.addEventListener('change', recalculate);
      el.addEventListener('input', recalculate);
    }
  });

  document.getElementById('booking-form').addEventListener('submit', function(e) {
    e.preventDefault();
    var form = this;
    var cat = categorySelect.value;
    var lines = [];

    if (cat === 'live-band') {
      var pkg = getRadioValue('band-package');
      if (pkg) lines.push('Package: ' + LABELS.band[pkg] + ' ($' + PRICING.band[pkg] + ')');
      var extra = getNumValue('band-extra-hours');
      if (extra > 0) lines.push('Extra hours: ' + extra + ' (+$' + (extra * PRICING.bandExtra) + ')');
      getCheckedValues('band-audio').forEach(function(a) {
        if (a === 'sound-engineer') {
          var hrs = getNumValue('band-engineer-hours');
          if (hrs < 1) hrs = 1;
          lines.push('Sound engineer: ' + hrs + ' hrs (+$' + (hrs * PRICING.soundEngineerPerHour) + ')');
        } else {
          lines.push('Sound add-on: ' + LABELS.bandAudio[a] + ' (+$' + PRICING.bandAudio[a] + ')');
        }
      });
    } else if (cat === 'audio-services') {
      var base = getRadioValue('audio-base');
      if (base) lines.push('Base: ' + LABELS.audio[base] + ' ($' + PRICING.audio[base] + ')');
      getCheckedValues('audio-addon').forEach(function(a) {
        if (a === 'sound-engineer') {
          var hrs = getNumValue('audio-engineer-hours');
          if (hrs < 1) hrs = 1;
          lines.push('Sound engineer: ' + hrs + ' hrs (+$' + (hrs * PRICING.soundEngineerPerHour) + ')');
        } else {
          lines.push('Add-on: ' + LABELS.audioAddon[a] + ' (+$' + PRICING.audioAddon[a] + ')');
        }
      });
    } else if (cat === 'pa-rental') {
      var pa = getRadioValue('pa-package');
      var days = getNumValue('pa-days');
      if (pa) lines.push('Package: ' + LABELS.paRental[pa] + ' x' + days + ' days ($' + (PRICING.paRental[pa] * days) + ')');
    } else if (cat === 'bundles') {
      var bun = getRadioValue('bundle-package');
      if (bun) lines.push('Bundle: ' + LABELS.bundles[bun] + ' ($' + PRICING.bundles[bun] + ')');
    }

    getCheckedValues('recording').forEach(function(r) {
      lines.push('Recording: ' + LABELS.recording[r] + ' (+$' + PRICING.recording[r] + ')');
    });
    var miles = getNumValue('travel-miles');
    if (miles > 0) lines.push('Travel: ' + miles + ' miles (+$' + (miles * PRICING.travelPerMile) + ')');
    var mics = getNumValue('extra-mics');
    if (mics > 0) lines.push('Extra mics: ' + mics + ' (+$' + (mics * PRICING.extraMicEach) + ')');

    document.getElementById('selected-services-input').value = lines.join('\n');
    document.getElementById('estimated-total-input').value = priceTotal.textContent;

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
        msgDiv.textContent = 'Thank you! Your booking request has been sent. We\'ll get back to you within 1-2 business days.';
        msgDiv.style.display = 'block';
        form.reset();
        showPanel('');
        addonsSection.style.display = 'none';
        priceSummary.style.display = 'none';
      } else {
        msgDiv.className = 'bf-msg bf-msg-error';
        msgDiv.textContent = 'Something went wrong. Please try again or email us directly.';
        msgDiv.style.display = 'block';
      }
    }).catch(function() {
      msgDiv.className = 'bf-msg bf-msg-error';
      msgDiv.textContent = 'Something went wrong. Please try again or email us directly.';
      msgDiv.style.display = 'block';
    }).finally(function() {
      submitBtn.disabled = false;
      submitBtn.textContent = 'Send Booking Request';
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

{{< button href="/services/" target="_self" >}}
View Our Services
{{< /button >}}

{{< button href="/about/" target="_self" >}}
Learn More About Us
{{< /button >}}
