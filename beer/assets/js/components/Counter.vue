<template>
    <div id="counter">
        <div class="cup">
            <div class="drink">
              <div v-for="num in num" v-bind:key="num">
                <div class="bubbles">
                    <div class="bubble bubble-2"></div>
                    <div class="bubble bubble-5"></div>
                    <div class="bubble bubble-1"></div>
                    <div class="bubble bubble-3"></div>
                    <div class="bubble bubble-4"></div>
                </div>
             </div>
            </div>
        </div>

        <span>{{ num }} </span>
        <button @click="addOne">up</button>
        <button @click="substractOne">down</button>
        <p v-if="num === 0">
            Press 'up' or 'down' button!!!!
        </p>
    </div>
</template>

<script>
    export default {
        name: 'counter',
        data() {
            return {
                num: 0
            }
        },
        methods: {
            addOne: function () {
                this.num = this.num + 1;
            },
            substractOne: function () {
                this.num = this.num - 1;
            }
        }
    }
</script>
