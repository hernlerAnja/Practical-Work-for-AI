
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
        
        load "data/4MH7.pdb", protein
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
 
        load "data/4MH7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [855,2167,2168,2324,2330,2334,856,377,376,378,648,649,1188,300,313,2116,2143,2335,2337,619,1204,1186,1306,2169,1238,1296,1240,1235,1309,275,274,277,1222,1224] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [5397,6269,6270,4261,4262,5339,5341,5305,5336,4561,5323,5325,5326,4318,4320,4319,4259,4274,4275,4257,4258,5407,5408,5409,6241,5075,6268,6425,6435,5289,6437,4590,4591,6244,6217,6239] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [4836,4932,4886,4887,4888,4831,4665,4834,4589,4626,4625,4838,6445,6446,6433,6434,5254,5253,4933,5118,4899] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [7453,1457,7450,6997,6998,6999,6970,5678,5679,5676,3352,3334,6980,1460,1461,6979,2877,2878,2879,5563,5560,5562,5556,2869,6978,5549,5546,5547,1455,1575,1577,2896,2898] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [2938,2941,2942,2943,2917,7044,5443,7018,5511,6994,7017,7022,7023,7027,2922,2926,5442,5510,2988] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2938,2943,2917,7039,7042,7043,7044,7018,5511,7023,7027,2922,1341,1409,1410] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [5440,5442,5455,5510,2988,3001,3002,3011,6218,6220,2941,2942,2943,2944,7044,5443,2400] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2117,2119,1339,1341,1354,1409,1342,7070,7102,7103,7089,2943] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1242,1241,2203,2205,2206,876,792,806,2202,873,874,868,836,1205] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2644,2645,2646,2647,2690,3726,2632,1924,1925,1923,1937,3709,3719,3739,3706,3711] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        