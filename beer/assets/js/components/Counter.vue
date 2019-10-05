<template>
    <div id="counter">
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
