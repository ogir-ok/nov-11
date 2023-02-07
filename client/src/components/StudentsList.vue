<script >
export default {
  name: "StudentList",
  data() {
    return {
      students: [
        {'name': 'Ivan', 'birth_date': '2020-10-10', 'groups_count': 5},
        {'name': 'Ivan', 'birth_date': '2020-10-10', 'groups_count': 5},
        {'name': 'Ivan', 'birth_date': '2020-10-10', 'groups_count': 5}
      ]
    }
  }
}

</script>

<template>
 <table class="table">
   <thead>
   <tr>
     <th> Name </th>
     <th> Birth Date </th>
     <th> Groups Count </th>
   </tr>
   </thead>

   <tbody>

   <tr v-for="(student, index) in students">
     <td>{{ student.name }}</td>
     <td>{{ student.birth_date }}</td>
     <td>{{ student.groups_count }}</td>

   </tr>
   </tbody>


 </table>

</template>

<style scoped>
</style>
