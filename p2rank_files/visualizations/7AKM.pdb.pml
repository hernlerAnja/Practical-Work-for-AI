
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
        
        load "data/7AKM.pdb", protein
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
 
        load "data/7AKM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5820,5823,6507,6559,5811,6558,6732,4949,4950,6738,6525,6745,6742,4616,4620,4617,4619,4718,4719,4720,5766,5746,5779,4920,5730,5782,5809,5810,4633] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [1050,2130,2162,2163,2164,2337,2343,2344,2347,2350,324,552,554,1334,221,223,224,323,524,237,238,1350,1383,1332,1424,1427,2112,1386,1413,220] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [7671,7672,7673,7647,7652,7666,7592,7646,7651,7139,7156,7158,6512,5859,5857,6495,5855,5858,5852,5911,5939,5940,5944,5908,5912,4160,4185,4187,4161,4162,4289] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [552,296,2346,2348,2349,2350,297,279,777,592,593,277,721,281,283,280,285,682,554,2376,840,553,759,2382,2386,2387,2388,2389,2049,760,763,2378,710,2377] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [7743,7740,7792,7794,7801,7811,7815,1775,1776,1780,1832,991,992,1006,1007,1008,1021,1022,1815,4164,4271,4272,1760,1761,1762,7727,7728,7729,7730,4165,1765,1767,4265,4269,4289,1763,1764,1766,7121,7805,7804,7835,7724,7139,7726] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [6475,6476,6526,6525,6745,6741,6744,6508,6509,6777,4680,6441,6444,7097,7106,6782,6783,4214,4215,4218,4219,4221,4655,4222,4678,4183] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [1513,1459,1512,1515,1461,1463,2116,2117,1548,3197,2763,3276,3278,3277,3271,3257,3258,3252,3256] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [5505,5709,5504,4510,4511,4905,5501,5503,5520,5708,5502,4799,4796,4852,4851,4883] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1695,1698,1699,1700,7122,7741,7742,1644,7743,4333,4336,1764,1684,7249] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1107,487,403,111,1153,1154,1156,114,98] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        