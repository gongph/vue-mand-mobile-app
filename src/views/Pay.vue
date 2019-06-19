<template>
  <div class="pay-page">
    <!-- 金额输入框 -->
    <field-input
      @number:hide="handleNumberHide"
      @number:enter="handleNumberEnter"
      @number:delete="handleNumberDelete"
      @number:confirm="handleNumberConfirm"
    />
    <!-- 支付方式 -->
    <h2 class="payway-title">请选择支付方式</h2>
    <field-radio :data="options" @click="handlePaywayClick"/>
    <!-- 蜂蜜数量 -->
    <p class="beef-account">可用蜂蜜：<span>1000滴</span></p>
    <!-- 绑定微信 -->
    <p class="bind-wx">
      <a href="javascript:void(0);" class="link">绑定微信信息</a>
    </p>
  </div>
</template>

<script>
import FieldInput from '@/components/FieldInput.vue'
import FieldRadio from '@/components/FieldRadio.vue'
import { Toast } from 'mand-mobile'

export default {
  name: 'PayPage',
  components: {
    FieldInput,
    FieldRadio
  },
  data () {
    return {
      number: '',
      options: [
        { label: '支付宝全额支付', value: 'zhifubao' },
        { label: '蜂蜜+支付宝支付', value: 'beef' }
      ]
    }
  },
  methods: {
    handleNumberHide (type) {
      //
    },
    handleNumberEnter (val) {
      this.number = this.number + val
    },
    handleNumberDelete (val) {
      this.number = val
    },
    handleNumberConfirm () {
      Toast.succeed('支付成功')
    },
    handlePaywayClick (data, val) {
      Toast.info(JSON.stringify(data))
    }
  }
}
</script>

<style lang="scss" scoped>
$width: 670px;
$orange: rgba(254,96,71,1);

.pay-page {
  font-family: PingFangSC-Regular, 'Microsoft YaHei';
  font-size: 28px;
  background-color: #F7F7F7;
  height: 100vh;
  overflow: hidden;
}
.payway-title {
  width: $width;
  margin: 0 auto;
  font-size: inherit;
  font-weight: 400;
  color: rgba(153,153,153,1);
  padding: 40px 0 24px 24px;
  box-sizing: border-box;
  display: block;
}
.beef-account {
  width: $width;
  margin: 0 auto;
  text-align: right;
  padding: 40px 40px 0;
  box-sizing: border-box;
  color: #666666;
  & span {
    color: $orange;
  }
}
.bind-wx {
  width: $width;
  margin: 0 auto;
  text-align: center;
  padding-top: 54px;
  box-sizing: border-box;
  & .link {
    color: $orange;
    font-size: inherit;
    outline: none;
    user-select: none;
    -webkit-tap-highlight-color: rgba(255, 255, 255, 0);
    &:focus,
    &:hover,
    &:link,
    &:active,
    &:visited {
      color: none;
      background: none;
    }
  }
}
</style>
