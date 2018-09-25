#include <myheader.h>
int a = 3;
int caller(int a,int b){
    a = b*2 + a;
    printf();
}

int main(){
    int myvar = caller();
    int a ;
    a = b;
    b = 3*4 + b;
    x = process();
    func();
    b = x* func();

    job_1 = Job(job_id=1, flops_required = 100, deadline = 200, mem_required = 1024,affinity = [0.2,0.5,1,2])
    mem1 = Memory(memory_type= 'cache', mem_size=1)
    ram = Memory(memory_type= 'primary', mem_size = 2048,, name = "ram1")
    proc_1 = Processor(isa = 'ARM', clock_speed = 40, l1_memory = mem1)
    link_1 = Link(start_point = "proc_1", end_point= "ram1", 40, 50)
    while(!==Ram.get_available_memory()){
        wait(1)
        }
    if ( job_1.get_memory() <= ram.get_available_memory() ) {
    proc_1.submit_jobs(job_1)
    }
    else{
        discard_job(job_1)
    }

    
    return 0;
}