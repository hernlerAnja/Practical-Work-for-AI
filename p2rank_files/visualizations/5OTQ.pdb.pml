
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
        
        load "data/5OTQ.pdb", protein
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
 
        load "data/5OTQ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1320,1324,1877,1323,1349,1374,1173,1958,1121,1347,1348,1367,1372,1361,962,1322,1327,1329,1332,1871,1873,1903,1093,1139,1141,1899,1901,1090,984,986,987,988,989,1042,1050,1022,1024,1026,1910,1908,1904,1907,967,979,983,985,999,1000] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1333,1334,1335,392,380,389,396,397,1322,1327,1329,1330,1331,1332,1316,1318,1645,400,399,1466,1347,1361,1363,1365,1463,962,777,944,1643,375,401,417,377,374,433,434,369,537,371,538,977,1004,1007,961,963,368,367,554,1467,1479,1481,1498,1501,1499,1500,1302,1506,1507,1508,406,408,616,617,1300,1301,1633,405,418,598,553,551,552,918,920,921,661,612,595,597,613] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [287,299,312,544,560,562,335,336,337,545,561,313,316,876,835,836,837,838,289,288,821,895] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1802,1803,1806,2654,2702,2696,2685,2707,1210,2708,2713,2717,2706,1236,1794,65,75,1788,47,48] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        