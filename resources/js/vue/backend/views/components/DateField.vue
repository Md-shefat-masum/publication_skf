<template>
    <label :for="name || 'date'" class="text-capitalize d-block date_custom_control">
        <span class="mb-2 d-block">{{ label || 'Date' }}</span>
        <input type="date" :ref="`date_input`"
            @click="$event.target.showPicker()"
            @focus="$event.target.showPicker()"
            @change="format_date();keyup_handler($event.target.value)"
            :id="name || 'date'"
            :value="value"
            :name="name || 'date'"
            class="form-control">
        <div class="form-control preview">
            {{ formated_value }}
        </div>
    </label>
</template>

<script>
import moment from 'moment'
export default {
    props: {
        'label': {
            type: String,
        },
        'name': {
            type: String,
        },
        'value': {
            type: String,
            default: moment().format('YYYY-MM-DD'),
        },
        keyup_handler: {
            type: Function,
            default: ()=>'',
        },
    },
    data: ()=>({
        formated_value: null,
    }),
    created: function(){
        setTimeout(() => {
            this.format_date();
        }, 300);
    },
    methods: {
        format_date: function(){
            let date = moment(this.$refs.date_input.value);
            this.formated_value = date.format('DD MMMM YYYY')
        }
    }
}
</script>

<style>

</style>
