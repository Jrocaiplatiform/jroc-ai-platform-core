export class AuthService {
  async validateToken(token:string){
    return !!token;
  }
}
