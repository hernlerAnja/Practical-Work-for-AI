
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
        
        load "data/5N7F.pdb", protein
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
 
        load "data/5N7F.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5388,5355,5597,5356,5413,5378,5379,5380,2189,2193,2159,2186,2187,2188,2223,2225,2276,2254,2196,2253,2255,5528,5562,2157,2162,2191,5526,5527,5412,5555,5556,5588,2278,2277,2160,2161] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.322,0.702]
select surf_pocket2, protein and id [2278,2131,2163,2312,5194,5195,5517,5551,5552,5556,5585,5587,5578,5549,5244,5245,5259,2338,5223,5224,5196,2347,2106,2105,2138,5254,2304,2306,2308,2303] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.467,0.361,0.902]
select surf_pocket3, protein and id [445,453,739,740,752,448,449,741,745,746,747,855,765,762,1114,1127,1168,876,1137,843,871,874,1140,870,839] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.490,0.278,0.702]
select surf_pocket4, protein and id [5268,5269,5612,5980,5981,5610,5611,5945,5953,4890,5924,4896,4902,4911,4914,4916,4917,5232,5270,4922,4923,5293,5294] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.792,0.361,0.902]
select surf_pocket5, protein and id [1661,1664,1667,1652,1666,2730,2731,1640,2696,2703,1982,2019,2020,2674,1672,1673,2018,2356,2360,2361,2362,2043] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.659]
select surf_pocket6, protein and id [3552,3528,3531,3513,3536,3510,3524,3893,3918,3915,3520,3546,3540,3892,3927] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.682]
select surf_pocket7, protein and id [1525,2896,2918,1380,1382,1383,1403,1503,1434,1435,1494,1407,1408,1472,1502,1491,1492,1493] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.408]
select surf_pocket8, protein and id [2666,2755,2667,1588,2634,2791,1587,2788,2821,2656,2691,2658,2690] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.361]
select surf_pocket9, protein and id [5916,5884,5917,6038,6041,4839,5940,5941,6005,5906,5908,6071,6029] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.408,0.278]
select surf_pocket10, protein and id [4742,4752,4753,4775,4722,6146,6144,4684,4685,4743,4744,4653,4630,4657,4658,6168,4633,4632] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.682,0.361]
select surf_pocket11, protein and id [6060,6062,6356,6353,6089,6420,6422,6423,6446,6457,6087,6410,6411,6447] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.659,0.278]
select surf_pocket12, protein and id [1275,1276,1277,1278,1181,1422,1423,1288,1292,1159] 
set surface_color,  pcol12, surf_pocket12 
   
        
        deselect
        
        orient
        