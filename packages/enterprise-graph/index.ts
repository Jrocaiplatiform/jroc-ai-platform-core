export class EnterpriseGraph {
  async createNode(label:string){
    return {
      id: crypto.randomUUID(),
      label
    };
  }
}
