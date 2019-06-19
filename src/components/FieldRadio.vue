<template>
  <div class="payway-wrapper">
    <template v-if="data.length > 0">
      <div class="payway zhifubao">
        <div class="label">{{ data[0].label }}</div>
        <div
          class="field-radio"
          :class="index === 1 ? 'is-checked' : ''"
          @click="onclick(1, data[0])"
        >
          <input
            type="radio"
            aria-hidden="true"
            tabindex="-1"
            class="field-radio__original"
            :value="data[0].value"
          >
        </div>
      </div>
      <div class="payway beef">
        <div class="label">{{ data[1].label }}</div>
        <div
          class="field-radio"
          :class="index === 2 ? 'is-checked' : ''"
          @click="onclick(2, data[1])"
        >
          <input
            type="radio"
            aria-hidden="true"
            tabindex="-1"
            class="field-radio__original"
            :value="data[1].value"
          >
        </div>
      </div>
    </template>
  </div>
</template>

<script>
export default {
  name: 'PayWay',
  props: {
    data: {
      type: Array,
      default: () => []
    }
  },
  data () {
    return {
      index: -1
    }
  },
  methods: {
    onclick (index, row) {
      this.index = index
      this.$emit('click', row, row.value)
    }
  }
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
      &.is-checked {
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
