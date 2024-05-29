
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
        
        load "data/5OWL.pdb", protein
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
 
        load "data/5OWL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3189,3190,3199,3228,3178,3179,3242,3243,3244,3347,3363,3360,3362,3364,3717,3719,3720,4251,4257,4120,4250,3584,4147,4148,4149,4246,4248,4249,3182,3181,3348,3715,3714,3759,3743,3740] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [541,542,919,543,914,915,910,912,777,779,909,438,439,557,559,1445,1446,1450,1451,1449,1443,1441,1342,1444,1315,1343,1344,957,954,387,388,374,376,377,934,938,953,437,373] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3208,3209,3210,3202,4109,260,261,262,3218,4283,4282,4281,4093,4255,4256,4257,4273,4274,4275,3434,3190,3199,3228,3363,3378,3379,3475,3364,4120,4133,4122,4124,4121,4126,3211,3217,3215,3216,3402,3403,3435,3220,3219,3221,3437] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4718,3786,3788,4115,4125,4126,4715,4717,4722,4723,4726,4728,4449,4448,4665,3787,4124,4716,3796,3797,3795,261,262,4434,4436,4414,4415,278,263,266,279,281] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4713,4716,313,493,495,4711,494,4705,4709,4755,4757,4756,4754,4774,798,799,4843,4759,807,4758,4760,480,479,519,503,324] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [712,4779,4782,240,243,238,236,4395,4798,4800,164,165,170,231,688,175,720,173,4789,4783,4788,4423,4424,4776] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [982,983,1911,1912,1860,1913,1320,1321,1610,1609,1643,1644,1310,1910,1917,1918,1921,1923,1631,1629] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [557,559,1468,1469,575,584,1451,1452,597,576,581,582,556,563,1476,1478,1288,670,598,1470] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [493,4711,4712,494,4710,5192,5180,5194,5182,4732,4741,4751,4755,4839,4836,4838,4874,5196,4843,4841,501,503,500] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3825,4672,4673,3964,3824,4157,3933,3918,3928,3920] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [616,883,612,613,614,615,251,253,650,274,830,831,269,271,250] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [211,213,223,184,1525,201,191,1491,1492,1545,1523] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [1018,1113,1115,1123,1128,1867,1868,1352] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        