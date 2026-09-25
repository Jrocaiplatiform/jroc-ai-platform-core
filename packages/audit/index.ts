export async function audit(
  action:string,
  actor:string
){
  console.log({
    action,
    actor,
    timestamp:new Date().toISOString()
  });
}
