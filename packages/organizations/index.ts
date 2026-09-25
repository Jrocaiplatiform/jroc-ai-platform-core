export class OrganizationService {
  async create(name:string){
    return {
      id: crypto.randomUUID(),
      name
    };
  }
}
