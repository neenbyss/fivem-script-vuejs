const app = Vue.createApp({
  data() {
    return {
      template: true
    };
  },
  destroyed() {
    window.removeEventListener("message", this.listener);
  },
  mounted() {
    this.listener = window.addEventListener("message", (event) => {
      let action = event.data.action;
      let data = event.data;
      switch (action) {
        case "CLOSE":
          this.nui("close")
          break;
      }
    });
  },
  methods: {
    nui(callback, data = {}) {
      fetch(`https://${GetParentResourceName()}/${callback}`, {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(data),
      });
    },
  },
});
app.mount("#app");
