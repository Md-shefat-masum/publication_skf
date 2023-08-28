<template>
    <div>
        <span v-if="status == 'pending'" class="badge bg-primary"> {{ status }} </span>
        <span v-if="status == 'accepted'" class="badge bg-secondary"> {{ status }} </span>
        <span v-if="status == 'processing'" class="badge bg-warning"> {{ status }} </span>
        <span v-if="status == 'delivered'" class="badge bg-success"> {{ status }} </span>
        <span v-if="status == 'canceled'" class="badge bg-danger"> {{ status }} </span>
    </div>
</template>

<script>
export default {
    props: ['status']
}
</script>

<style>

</style>
