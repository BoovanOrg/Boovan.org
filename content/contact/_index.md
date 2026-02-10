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
<label class="bf-label">留言 *</label>
<textarea name="message" rows="5" required class="bf-input" placeholder="请告诉我们您的活动、需求或咨询..."></textarea>
</div>
<div>
<button type="submit" class="bf-submit">发送咨询</button>
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
    submitBtn.textContent = '发送中...';
    msgDiv.style.display = 'none';

    fetch(form.action, {
      method: 'POST',
      body: new FormData(form),
      headers: { 'Accept': 'application/json' }
    }).then(function(response) {
      if (response.ok) {
        msgDiv.className = 'bf-msg bf-msg-success';
        msgDiv.textContent = '谢谢！您的咨询已发送。我们将在1-2个工作日内回复您。';
        msgDiv.style.display = 'block';
        form.reset();
      } else {
        msgDiv.className = 'bf-msg bf-msg-error';
        msgDiv.textContent = '出了点问题，请重试或直接发邮件联系我们：info@boovan.org';
        msgDiv.style.display = 'block';
      }
    }).catch(function() {
      msgDiv.className = 'bf-msg bf-msg-error';
      msgDiv.textContent = '出了点问题，请重试或直接发邮件联系我们：info@boovan.org';
      msgDiv.style.display = 'block';
    }).finally(function() {
      submitBtn.disabled = false;
      submitBtn.textContent = '发送咨询';
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
