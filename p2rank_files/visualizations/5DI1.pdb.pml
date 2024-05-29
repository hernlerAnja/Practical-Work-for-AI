
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
        
        load "data/5DI1.pdb", protein
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
 
        load "data/5DI1.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [167,175,176,177,178,179,173,174,1264,1263,147,148,149,144,145,146,199,200,300,760,315,316,317,1258,741,742,1256,1257,1265,1259,1260,782,786,787,808,809,810,779,1181,778,746,758,763,766,1180,772,762,3684] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3716,3725,3727,3733,3736,3739,3781,3783,1698,3690,3630,3648,3651,3652,3653,3654,3655,3650,3664,1681,1683,1680,1682,3889,3891,3892,3893,1695,1696,3808,3810,3811,3874,3626,3627,3691,1305,1307,1303,3742,3701,3435,3764,3765,3967,3777,3776,3784,3467,3449,3450,3766,3772] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [3580,2521,2522,2523,3579,3597,2527,2623,3577,3064,3082,3475,3467,3487,3450,3488,2520,2526,3084,3425,3431,3609,3447,3503,3101,3502,3088,3094,3089,3085,2507,2640,2639,1305,1307,3642,3646,3652,3653,3654] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1266,1165,1166,1126,1127,1128,1122,1113,1114,165,170,172,1265,1317,1320,1144,1326,1323,1367,1349,1551,1475,1477,1158,3722,3723,1145,1365,1361,1300,1309,1316,4098,4099,3694,3695,3720,4112] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1655,1656,1340,1653,1636,1624,1626,1629,3705,3711,3712,1325,1342,1158,3679,1157,1357,1358,1326,3682,3683,3684,834,802,833,1598] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1722,4136,4138,4110,4133,4134,4139,1407,4140,3826,3829,1410,3818,3823,1720,1717,1723,4114,1402,1404,1413,1765,1724] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [86,612,242,243,244,245,246,96,97,98,587,593,582,585,586,241,583,584,594,280,282,589,588,281] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1747,1337,1748,1540,1543,1649,1650,1651,1775,1772,1569,1641,1795] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3373,4460,4452,4453,4454,4449,3372,3907,3908,3910,3920,3921,4465,4468] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3129,3098,3164,4681,4679,4701,4683,4685,4675,3510,4687] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        