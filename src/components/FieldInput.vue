<template>
  <div>
    <div class="field-input" ref="field-input" @click="isKeyBoardShow = true">
      <input
        v-model="money"
        type="text"
        autocomplete="off"
        placeholder="消费金额"
        class="field-input__inner"
        readonly
        v-focus
      >
      <span class="field-input__suffix">
        <span class="field-input__suffix-inner">
          <i class="field-input__icon">￥</i>
        </span>
      </span>
    </div>
    <md-number-keyboard
      v-model="isKeyBoardShow"
      ok-text="支付"
      disorder
      @enter="onNumberEnter"
      @delete="onNumberDelete"
    />
  </div>
</template>

<script>
import { NumberKeyboard } from 'mand-mobile'
import FocusMixin from '@/mixins/focus.js'
export default {
  name: 'FieldInput',
  mixins: [FocusMixin],
  components: {
    [NumberKeyboard.name]: NumberKeyboard
  },
  data () {
    return {
      money: '',
      isKeyBoardShow: false
    }
  },
  methods: {
    onNumberEnter(val) {
      this.money += val
    },
    onNumberDelete () {
      if (!this.money) return
      this.money = this.money.substr(0, this.money.length - 1)
    }
  }
}
</script>

<style lang="scss" scoped>
.field-input {
  position: relative;
  width: 670px;
  height: 96px;
  margin: 40px auto 0 auto;
  background:rgba(255,255,255,1);
  border-radius:4px;
  border:1px solid rgba(153,153,153,1);
  overflow: hidden;
  font-size: 28px;
  font-family: PingFangSC-Regular, 'Microsoft YaHei';
}
.field-input__inner {
  height: 100%;
  width: 100%;
  line-height: 96px;
  font-size: inherit;
  font-weight: 400;
  outline: none;
  border: none;
  background-color: transparent;
  background-image: none;
  box-sizing: border-box;
  display: inline-block;
  padding: 0 24px;
  // 光标颜色
  color: rgba(254,96,71,1);
  &::first-line {
    color: rgba(102,102,102,1);
  }
}
.field-input__suffix {
  position: absolute;
  height: 100%;
  top: 0;
  right: 22px;
  text-align: center;
  color: #c0c4cc;
  transition: all .3s;
  pointer-events: none;
}
.el-input__suffix-inner {
  pointer-events: all;
}
.field-input__icon {
  width: 36px;
  height: 36px;
  line-height: 96px;
  font-size: 36px;
  font-style: normal;
  color:rgba(51,51,51,1);
}
</style>
