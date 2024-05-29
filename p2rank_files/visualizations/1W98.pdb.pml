
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
        
        load "data/1W98.pdb", protein
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
 
        load "data/1W98.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1058,698,701,1087,686,1086,1163,1164,1166,264,265,1070,248,670,678,93,664,666,640,641,642,146,147,95,145,89,1158,508,509,650,1159] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1209,1275,1213,1214,1222,1223,1226,1247,1236,1252,2933,1251,4508,4509,4510,3608,3638,3639,3640,1253,1273,3254,2935,2936,2937,3609,3582,3606,3563,3564,2576,3571,984,3253,3557,2934,2974,2975,3241,3242,3245,425,427,1210,3567,419,2551,3647] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [1441,3773,1427,1439,1440,3774,2198,2199,1389,1832,1835,2189,2190,2183,2191,1444,1423,1841,1846,1847,1848,1865,1866,1869,1870,1874,1466,1450] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [404,1179,1165,1166,263,264,265,371,372,373,374,377,282,261,100,101,107,108,122,124,130,131,132,133,134,136,137,147,120,121,280] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [4062,4090,4089,4101,4131,3688,3666,3871,3834,3697,3699,3835] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [4487,2916,3262,2894,4457,1261,1262,1264,3269,3271,3275,2907,2895,2882,3264,3268,3279,3297,4450,4452,4458,4456] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1280,1281,1301,3258,3267,1312,1285,1283,367,370,1181,1188,394,3232,365,126,1193,392] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [227,228,229,533,225,226,539,530,531,634,40,42,242,192,542] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        