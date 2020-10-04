import { Controller } from "stimulus"
export default class extends Controller {
    static targets = [ "categoria" ]
    toggle(event) {


let formData = new FormData()
formData.append("restaurant[categoria]", this.categoriaTarget.checked);

    }
}

fetch(this.data.get("update-url"), {
      body: formData,
      method: 'PATCH',
      dataType: 'script',
      credentials: "include",
      headers: {
              "X-CSRF-Token": getMetaValue("csrf-token")
       },
})


