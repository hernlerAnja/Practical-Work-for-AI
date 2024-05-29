
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
        
        load "data/1NSG.pdb", protein
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
 
        load "data/1NSG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [542,1250,800,802,1246,1248,245,448,450,452,583,586,446,425,438,443,538,541,550,551,545,840,844,870,835,836,838,842,1243,1876,1878,1197,1922,1924,1919,1920,1921,1923,534,457,530,531,532,533,535,1245,1247,1249,1196,1194,1195,1242,1244,337,339,350,347,348,879,243,869,877,552,948,950,801,587,585,1886,1887,1842,1888,400,401,427,428,429,1868,1869,1918,1969,1840,1843,1844,1845,1870,334,1816,349,402,1955,1954,1956,1160,1171,1959,1958] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [1402,1369,1370,1373,1375,1376,1377,1666,1667,1668,1333,1364,1710,1707,1717,1761,1760,1664,1708,1334,1336] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [1641,1642,1669,1398,1401,1643,1425,1426,1427,1432,1433,1428,1430,1560] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        