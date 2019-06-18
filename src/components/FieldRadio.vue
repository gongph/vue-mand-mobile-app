<template>
  <div class="payway-wrapper">
    <div class="payway zhifubao">
      <div class="label">支付宝全额支付</div>
      <div class="field-radio">
        <input type="radio" aria-hidden="true" tabindex="-1" class="field-radio__original" value="1">
      </div>
    </div>
    <div class="payway beef">
      <div class="label">蜂蜜+支付宝支付</div>
      <div class="field-radio">
        <input type="radio" aria-hidden="true" tabindex="-1" class="field-radio__original" value="2">
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'PayWay'
}
</script>

<style lang="scss" scoped>
.payway-wrapper {
  width: 670px;
  height: 204px;
  margin: 0 auto;
  background-color: rgba(255,255,255,1);
  border-radius: 4px;
  display: flex;
  flex-direction: column;
  .payway {
    flex: 1;
    font-size: 28;
    display: flex;
    align-items: center;
    justify-content: space-between;
    .label,
    .field-checkbox {
      display: inline-block;
    }
    .label {
      padding-left: 24px;
      color: rgba(51,51,51,1);
    }
    .field-radio {
      margin-right: 40px;
      width: 32px;
      height: 32px;
      border-radius: 8px;
      background-color: #999999;
      position: relative;
      transition: all .2s cubic-bezier(.63,-0.05,1,.65);
      &::before {
        content: '';
        position: absolute;
        top: 15%;
        right: 0;
        bottom: 0;
        left: 8%;
        width: 8px;
        height: 16px;
        border-color: #ffffff;
        border-style: solid;
        border-width: 0 3px 3px 0;
        border-bottom-right-radius: 4px;
        transform: rotate(45deg);
        transform-origin: right bottom;
      }
      &:is-checked {
        background-color: rgba(254,96,71,1);
      }
    }
    .field-radio__original {
      position: absolute;
      z-index: -1;
      top: 0;
      right: 0;
      bottom: 0;
      left: 0;
      margin: 0;
      opacity: 0;
      outline: none;
    }
  }
}
</style>
