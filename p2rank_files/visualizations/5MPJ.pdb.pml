
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
        
        load "data/5MPJ.pdb", protein
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
 
        load "data/5MPJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1159,1334,1335,1352,1128,1129,1872,1873,1866,1308,956,1333,977,979,981,1309,957,1310,1306,1847,1844,1319,1045,1874,974,1006,1010,1044,1009,961,1115,1118] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3313,3312,3314,3145,3147,3326,3328,3329,3208,3209,3210,3148,3330,3682,4220,4223,4224,3544,3679,3680,3681,4218,3546,3706,3708,3705,4116,4117,4215,4219,4083,4090,4118,4226,3150,3151,3153,3143,3144,3164,3676,3677,3686] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [437,439,378,379,380,912,914,542,909,910,911,915,438,777,778,1443,1441,1445,1315,1444,1328,543,935,938,1343,1344,954,956,779,374,376,372,373,1446,557,558,559,1449,1450,1452,423] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1303,1449,1450,1452,1451,413,1304,1615,1288,1476,1477,558,423,394,397,410,439,1316,1318,1328] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3084,3266,1192,1197,2666,2668,1195,1196,2664,2665,754,1202,1204,1198,1199,1171,2692,3083,74,1230,3059,76,1193,1231,3049,3052,3056,3028,3572,3573,3574] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3437,4242,3330,4224,4225,3400,3401,3398,4243,3345,3343,3179,3194,3329,3346,3407,3368,3172,3177,3181,4226,3184,4250,4252,4251,4055] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4107,4126,3882,3787,3785,4647,3811] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [184,1491,1492,212,1497,1523,1525,191,193,1545,1544] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [2632,2649,2654,48,54,1758,1776,65,1222,1764,1772,1773] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        