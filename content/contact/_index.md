---
title: "联系不晚"
description: "联系不晚乐队进行预约、咨询和合作"
showTableOfContents: false
---

{{< lead >}}
我们期待您的来信！无论是预约演出、租赁设备，还是想打个招呼，都欢迎联系我们。
{{< /lead >}}

## 服务预约与咨询

请填写以下表格，我们将在1-2个工作日内回复您。选择服务可查看预估价格。

<form id="booking-form" action="https://formspree.io/f/mykzgodb" method="POST">
<input type="hidden" name="selected-services" id="selected-services-input">
<input type="hidden" name="estimated-total" id="estimated-total-input">
<div class="bf-form-group">
<label class="bf-label">姓名 *</label>
<input type="text" name="name" required class="bf-input">
</div>
<div class="bf-form-group">
<label class="bf-label">邮箱 *</label>
<input type="email" name="email" required class="bf-input">
</div>
<div class="bf-form-group">
<label class="bf-label">电话</label>
<input type="tel" name="phone" class="bf-input">
</div>
<div class="bf-form-group">
<label class="bf-label">活动日期（如适用）</label>
<input type="date" name="event-date" class="bf-input">
</div>
<div class="bf-form-group">
<label class="bf-label">服务类别 *</label>
<select id="service-category" name="service-category" required class="bf-input">
<option value="">请选择服务...</option>
<option value="live-band">乐队现场演出</option>
<option value="audio-services">音响服务（送货并安装）</option>
<option value="pa-rental">音响设备租赁（自取）</option>
<option value="bundles">🎉 套餐 — 更优惠！</option>
<option value="other">其他 / 一般咨询</option>
</select>
</div>
<div id="panel-live-band" class="bf-panel" style="display:none;">
<div class="bf-panel-header">乐队现场演出</div>
<div class="bf-option-group">
<label class="bf-option"><input type="radio" name="band-package" value="1set"> 1组演出 (1小时) — $300</label>
<label class="bf-option"><input type="radio" name="band-package" value="2sets"> 2组演出 (2小时) — $500</label>
<label class="bf-option"><input type="radio" name="band-package" value="3sets"> 3组演出 (3小时) — $800</label>
</div>
<div class="bf-extra">
<label class="bf-label">额外时间 (+$200/小时)</label>
<input type="number" id="band-extra-hours" min="0" max="10" value="0" class="bf-input-sm">
</div>
<div class="bf-addon-group">
<p class="bf-note" style="font-style:normal; color:rgba(var(--color-primary-300),1);">⚠ 乐队演出不包含音响服务。如果场地不提供，请在下方添加：</p>
<label class="bf-option"><input type="checkbox" name="band-audio" value="pa-basic"> 添加：音响 + 麦克风 + 安装/拆卸 — +$200</label>
<label class="bf-option"><input type="checkbox" name="band-audio" value="sound-engineer"> 添加：音响师 — +$40/小时</label>
<div class="bf-extra" id="band-engineer-hours-wrap" style="display:none;margin-left:1.5rem;">
<label class="bf-label">音响师时长</label>
<input type="number" id="band-engineer-hours" min="1" max="20" value="1" class="bf-input-sm">
</div>
<label class="bf-option"><input type="checkbox" name="band-audio" value="music-playback"> 添加：休息时间播放音乐 — +$50</label>
<label class="bf-option"><input type="checkbox" name="band-audio" value="mc"> 添加：主持/报幕 — +$50</label>
</div>
</div>
<div id="panel-audio-services" class="bf-panel" style="display:none;">
<div class="bf-panel-header">音响服务</div>
<div class="bf-option-group">
<label class="bf-option"><input type="radio" name="audio-base" value="pa-basic"> 音响 + 麦克风 + 安装/拆卸 — $200</label>
<label class="bf-option"><input type="checkbox" name="audio-addon" value="sound-engineer"> 添加：音响师 — +$40/小时</label>
<div class="bf-extra" id="audio-engineer-hours-wrap" style="display:none;margin-left:1.5rem;">
<label class="bf-label">音响师时长</label>
<input type="number" id="audio-engineer-hours" min="1" max="20" value="1" class="bf-input-sm">
</div>
</div>
<div class="bf-addon-group">
<label class="bf-option"><input type="checkbox" name="audio-addon" value="music-playback"> 添加：休息时间播放音乐 — +$50</label>
<label class="bf-option"><input type="checkbox" name="audio-addon" value="mc"> 添加：主持/报幕 — +$50</label>
</div>
</div>
<div id="panel-pa-rental" class="bf-panel" style="display:none;">
<div class="bf-panel-header">音响设备租赁（自取）</div>
<div class="bf-option-group">
<label class="bf-option"><input type="radio" name="pa-package" value="basic"> 基本套装（音箱 + 线缆）— $75/天（押金：$200）</label>
<label class="bf-option"><input type="radio" name="pa-package" value="full"> 完整套装（音箱 + XR18混音器 + 麦克风）— $125/天（押金：$350）</label>
</div>
<div class="bf-extra">
<label class="bf-label">租赁天数</label>
<input type="number" id="pa-days" min="1" max="30" value="1" class="bf-input-sm">
</div>
<p class="bf-note">押金在设备完好归还后退还。</p>
</div>
<div id="panel-bundles" class="bf-panel" style="display:none;">
<div class="bf-panel-header">🎉 套餐 — 更优惠！</div>
<div class="bf-option-group">
<label class="bf-option"><input type="radio" name="bundle-package" value="full-event"> 🎸 全套活动 — 1组乐队演出 (1小时) + 音响 + 音响师 + 间歇音乐（共4小时）— <s>$710</s> <strong>$600</strong></label>
<label class="bf-option"><input type="radio" name="bundle-package" value="audio-only"> 🎧 纯音响 — 音响 + 音响师 + 音乐播放（4小时）— <s>$410</s> <strong>$300</strong></label>
</div>
</div>
<div id="panel-other" class="bf-panel" style="display:none;">
<p class="bf-note">请在下方留言中描述您的需求。</p>
</div>
<div id="addons-section" class="bf-panel" style="display:none;">
<div class="bf-panel-header">附加服务</div>
<p class="bf-subheader">录音服务</p>
<label class="bf-option"><input type="checkbox" name="recording" value="stereo"> 现场立体声录音 — +$100</label>
<label class="bf-option"><input type="checkbox" name="recording" value="multitrack"> 多轨录音 — +$200</label>
<label class="bf-option"><input type="checkbox" name="recording" value="mixmaster"> 后期混音/母带 — +$150</label>
<p class="bf-subheader">附加费用</p>
<div class="bf-extra">
<label class="bf-label">超过30英里的交通费（$1/英里）</label>
<input type="number" id="travel-miles" min="0" max="500" value="0" class="bf-input-sm">
</div>
<div class="bf-extra">
<label class="bf-label">额外麦克风租赁（$15/个）</label>
<input type="number" id="extra-mics" min="0" max="20" value="0" class="bf-input-sm">
</div>
</div>
<div id="price-summary" style="display:none;">
<div class="bf-summary-header">预估价格</div>
<div id="price-line-items"></div>
<div class="bf-summary-total">预估总计：<span id="price-total">$0</span></div>
<p class="bf-disclaimer">* 此为预估价格，最终价格可能因具体需求而有所不同。</p>
</div>
<div class="bf-form-group">
<label class="bf-label">留言 *</label>
<textarea name="message" rows="5" required class="bf-input" placeholder="请告诉我们您的活动、需求或咨询..."></textarea>
</div>
<div>
<button type="submit" class="bf-submit">发送预约请求</button>
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
    band: { '1set': '1组乐队现场演出 (1小时)', '2sets': '2组乐队现场演出 (2小时)', '3sets': '3组乐队现场演出 (3小时)' },
    bandAudio: { 'pa-basic': '音响 + 麦克风 + 安装/拆卸', 'music-playback': '休息时间播放音乐', 'mc': '主持/报幕' },
    audio: { 'pa-basic': '音响 + 麦克风 + 安装/拆卸' },
    audioAddon: { 'music-playback': '休息时间播放音乐', 'mc': '主持/报幕' },
    paRental: { 'basic': '基本音响租赁', 'full': '完整音响租赁' },
    bundles: { 'full-event': '全套活动套餐', 'audio-only': '纯音响套餐' },
    recording: { 'stereo': '现场立体声录音', 'multitrack': '多轨录音', 'mixmaster': '后期混音/母带' }
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
        items.push({ label: '额外时间 x' + extra, amount: cost });
        total += cost;
      }
      getCheckedValues('band-audio').forEach(function(a) {
        if (a === 'sound-engineer') {
          var hrs = getNumValue('band-engineer-hours');
          if (hrs < 1) hrs = 1;
          var cost = hrs * PRICING.soundEngineerPerHour;
          items.push({ label: '音响师 x' + hrs + '小时', amount: cost });
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
          items.push({ label: '音响师 x' + hrs + '小时', amount: cost });
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
        items.push({ label: LABELS.paRental[pa] + ' x' + days + '天', amount: dayCost });
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
        items.push({ label: '交通：' + miles + '英里', amount: miles * PRICING.travelPerMile });
        total += miles * PRICING.travelPerMile;
      }
      var mics = getNumValue('extra-mics');
      if (mics > 0) {
        items.push({ label: '额外麦克风 x' + mics, amount: mics * PRICING.extraMicEach });
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
    submitBtn.textContent = '发送中...';
    msgDiv.style.display = 'none';

    fetch(form.action, {
      method: 'POST',
      body: new FormData(form),
      headers: { 'Accept': 'application/json' }
    }).then(function(response) {
      if (response.ok) {
        msgDiv.className = 'bf-msg bf-msg-success';
        msgDiv.textContent = '谢谢！您的预约请求已发送。我们将在1-2个工作日内回复您。';
        msgDiv.style.display = 'block';
        form.reset();
        showPanel('');
        addonsSection.style.display = 'none';
        priceSummary.style.display = 'none';
      } else {
        msgDiv.className = 'bf-msg bf-msg-error';
        msgDiv.textContent = '出了点问题，请重试或直接发邮件联系我们。';
        msgDiv.style.display = 'block';
      }
    }).catch(function() {
      msgDiv.className = 'bf-msg bf-msg-error';
      msgDiv.textContent = '出了点问题，请重试或直接发邮件联系我们。';
      msgDiv.style.display = 'block';
    }).finally(function() {
      submitBtn.disabled = false;
      submitBtn.textContent = '发送预约请求';
    });
  });
})();
</script>

---

## 其他联系方式

{{< alert "envelope" >}}
**直接发邮件**：[info@boovan.org](mailto:info@boovan.org) — 期待您的来信！
{{< /alert >}}

{{< alert "circle-info" >}}
**回复时间**：我们通常在1-2个工作日内回复。如有紧急事项，请在留言中注明"紧急"。
{{< /alert >}}

{{< alert "calendar" >}}
**预约提前量**：建议活动前4-6周联系我们预约，但我们也会尽力配合较短的时间安排。
{{< /alert >}}

---

## 常见问题

**问：你们服务哪些地区？**
答：我们位于北德州，主要服务DFW大都会区及周边地区。如果您的活动在此区域之外，请联系我们讨论。

**问：你们可以外出演出吗？**
答：可以！我们可以为外地活动提供服务。服务区域以外的地点可能会产生交通费。

**问：取消政策是什么？**
答：我们理解计划可能会变化。如需改期或取消，请尽快联系我们，我们会一起找到解决方案。

**问：你们可以演奏特定的歌曲或曲风吗？**
答：当然可以！我们喜欢接受点歌请求。告诉我们您的喜好，我们会尽力配合。

**问：你们可以安排排练或咨询吗？**
答：可以，我们可以安排会面讨论您的活动需求，如有需要还可以进行预演。

---

{{< button href="/services/" target="_self" >}}
查看我们的服务
{{< /button >}}

{{< button href="/about/" target="_self" >}}
了解更多
{{< /button >}}
