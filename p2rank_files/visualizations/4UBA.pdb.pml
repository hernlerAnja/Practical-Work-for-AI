
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/4UBA.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/4UBA.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [3371,4262,3250,3252,3368,3370,3372,3725,4258,4254,4257,3251,4133,4134,3185,3186,3192,4128,3727,3728,3189,3354,3355,3356,3187,4141,4265,4263,4132,3770,4155,4156,4157,4256,3590,3592,3748,3751,3767,3732,3198,3236] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [954,957,1342,1343,938,950,1328,1444,1315,1344,385,439,374,438,373,543,376,377,932,934,935,909,912,1445,777,779,1441,1443,423,557,558,559,914,542,919,1450,1446,1449] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4723,4730,4736,807,798,4763,4764,4765,4766,4733,4851,4724,278,311,313,495,4717,4719,4720,324,535,799,917,494,479,480,502,503,501,519,310,516] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4289,4099,4101,4115,4116,4117,4141,4265,4263,4290,4100,4413,4415,4416,4418,4419,4129,4130,4131,4132,261,4423,4422,4264,4133,4134,262,245,3216,260,250,3228,3210,3214,3226,3207,3219,3198] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4129,4130,4131,3795,3796,4125,261,4423,4442,4444,4456,4729,4728,4115,4116,4117,4133,3803,3804,3805,3802,266,267,279,280,281,285,4124,269] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4763,4764,4765,4766,4762,4849,4851,4874,4875,4759,4847,4719,4720,5202,4740,494,480,503] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [244,4797,4798,4791,4796,4806,4808,712,4431,4432,4784,4787,4788,4790,5052,236,240,243,238,4403,708,162,169,688,720,170,175,164,165] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3223,3224,3225,3227,3410,4283,3411,3483,3222,3388,3226,4291,3228,4289,4265,4282,4281,3371,4264,3372] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [5186,5190,5191,4720,5200,5202,5204,4870,4882,4874,4875,503,492,500] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1352,1115,1308,1333,1334,1159,1841,1868,1018,1020,1044] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        