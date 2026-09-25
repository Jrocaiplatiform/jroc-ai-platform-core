export class AuthService {
  async validateToken(token:string){
    return typeof token === "string" && token.length > 0;
  }
}
